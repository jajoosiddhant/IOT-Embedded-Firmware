/*
 * gpio.c
 *
 *  Created on: Nov 16, 2018
 *      Author: user1
 */

#include "gpio.h"
#include "letimer.h"


/*
 * Enabling GPIO Clock
 */
void gpio_cmu_init()
{
	CMU_ClockEnable(cmuClock_LFA, true);

	CMU_ClockEnable(cmuClock_GPIO,true);
}

/*
 * Configure pushbuttons PB0 and PB1 as inputs, with pull-ups enabled
 */
void push_buttons_init(void)
{
	GPIO_PinModeSet(BSP_BUTTON0_PORT, BSP_BUTTON0_PIN, gpioModeInputPull, 1);
	GPIO_PinModeSet(BSP_BUTTON1_PORT, BSP_BUTTON1_PIN, gpioModeInputPull, 1);
}

/*
 * Initializing and Configuring GPIO pins and its corresponding Interrupts
 */
void gpio_irq_init()
{
	GPIO_PinModeSet(MOTION_PORT, MOTION_PIN, gpioModeInputPull, MOTION_DEFAULT);
	GPIO_PinModeSet(PROXIMITY_PORT, PROXIMITY_PIN, gpioModeInputPull, PROXIMITY_DEFAULT);

	/*Clear all the Gpio interrupts Flags*/
	GPIO->IFC = 0x00000000;

	/* Configure and Enable GPIO Interrupt For MOTION SENSOR*/
	GPIO_IntConfig(MOTION_PORT,MOTION_PIN,RISING_EDGE,FALLING_EDGE,INTERRUPT_ENABLE);

	/* Configure and Enable GPIO Interrupt For PROXIMITY SENSOR*/
	GPIO_IntConfig(PROXIMITY_PORT,PROXIMITY_PIN,RISING_EDGE,FALLING_EDGE,INTERRUPT_ENABLE);

	/*Enable NVIC interrupt*/
	NVIC_EnableIRQ(GPIO_ODD_IRQn);

	/*Enable NVIC interrupt*/
	NVIC_EnableIRQ(GPIO_EVEN_IRQn);

}

/*
 * Initializing LEDS
 */
void led_init()
{
	GPIO_DriveStrengthSet(LED1_PORT, gpioDriveStrengthStrongAlternateStrong);
	GPIO_DriveStrengthSet(LED1_PORT, gpioDriveStrengthStrongAlternateStrong);

	GPIO_PinModeSet(LED0_PORT,LED0_PIN, gpioModePushPull, LED0_DEFAULT);
	GPIO_PinModeSet(LED1_PORT,LED1_PIN, gpioModePushPull, LED1_DEFAULT);

}


void GPIO_ODD_IRQHandler(void)
{
	/*Disable all interrupts*/
	CORE_ATOMIC_IRQ_DISABLE();

	int flag;

	/*Clear Interrupt flags*/
	flag = GPIO_IntGet();
	flag = flag & (MOTION_INT_REG_VALUE);
	GPIO_IntClear(flag);

	/*Update external event Scheduler Values*/
	EXT_EVENT |= MOTION_EVENT;

	gecko_external_signal(EXT_EVENT);

	GPIO_IntDisable(MOTION_INT_REG_VALUE);

//	GPIO->IEN = 0x00000000;
	/* Configure and Enable GPIO Interrupt For PROXIMITY SENSOR*/
//	GPIO_IntConfig(PROXIMITY_PORT,PROXIMITY_PIN,RISING_EDGE,FALLING_EDGE,INTERRUPT_ENABLE);
	/*Disable all Interrupts*/
//	GPIO->IEN = 0x00000400;

	/*Disable all interrupts*/
	CORE_ATOMIC_IRQ_ENABLE();
}


void GPIO_EVEN_IRQHandler(void)
{
	/*Disable all interrupts*/
	CORE_ATOMIC_IRQ_DISABLE();
	int flag;

	/*Clear all Interrupt flags*/
	flag = GPIO_IntGet();
	flag = flag & (PROXIMITY_INT_REG_VALUE);
	GPIO_IntClear(flag);

	/*Update external event Scheduler Values*/
	EXT_EVENT |= PROXIMITY_EVENT;

	gecko_external_signal(EXT_EVENT);

	GPIO_IntDisable(PROXIMITY_INT_REG_VALUE);
//	GPIO->IEN = 0x00000000;
	/* Configure and Enable GPIO Interrupt For MOTION SENSOR*/
//	GPIO_IntConfig(MOTION_PORT,MOTION_PIN,RISING_EDGE,FALLING_EDGE,INTERRUPT_ENABLE);

	/*Disable all Interrupts*/
//	GPIO->IEN = 0x00000800;

	/*Disable all interrupts*/
	CORE_ATOMIC_IRQ_ENABLE();
}

/**
 * Update the state of LEDs. Takes one parameter LED_STATE_xxx that defines
 * the new state.
 */
void LED_state(int state)
{
	switch (state) {
	case LED_STATE_OFF:
		GPIO_PinOutClear(LED0_PORT, LED0_PIN);
		GPIO_PinOutClear(LED1_PORT, LED1_PIN);
		break;

	case LED_STATE_ON:
		GPIO_PinOutSet(LED0_PORT, LED0_PIN);
		GPIO_PinOutSet(LED1_PORT, LED1_PIN);
		break;

	case LED_STATE_RESTORE:
		GPIO_PinOutSet(LED0_PORT, LED0_PIN);
		GPIO_PinOutToggle(LED1_PORT, LED1_PIN);
		break;

	case LED_STATE_PROV:
		GPIO_PinOutToggle(LED0_PORT, LED0_PIN);
		GPIO_PinOutToggle(LED1_PORT, LED1_PIN);
		break;

	case LED0_STATE_ON:
		GPIO_PinOutSet(LED0_PORT, LED0_PIN);
		break;

	case LED0_STATE_OFF:
		GPIO_PinOutClear(LED0_PORT, LED0_PIN);
		break;

	case LED1_STATE_ON:
		GPIO_PinOutSet(LED1_PORT, LED1_PIN);
		break;

	case LED1_STATE_OFF:
		GPIO_PinOutClear(LED1_PORT, LED1_PIN);
		break;

	case LED0_STATE_PARKING_IN_PROCESS:
		GPIO_PinOutToggle(LED0_PORT, LED0_PIN);
		break;

	default:
		break;
	}
}



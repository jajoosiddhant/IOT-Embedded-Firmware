/*
 * main.h
 *
 *  Created on: Nov 4, 2018
 *      Author: user1
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#define BEARER				(0x03)

#define PUBLICKEY 			(0x00)
#define AUTH_METHOD			(0x03)
#define	OUTPUT_ACTION		(0x03)
#define	OUTPUT_SIZE			(0x08)
#define	INPUT_ACTION		(0x00)
#define	INPUT_SIZE			(0x04)
#define	LOCATION_BITMASK 	(0x01)


/*
#define PUBLICKEY 			(0x00)
#define AUTH_METHOD			(0x08)
#define	OUTPUT_ACTION		(0x08)
#define	OUTPUT_SIZE			(0x03)
#define	INPUT_ACTION		(0x00)
#define	INPUT_SIZE			(0x00)
#define	LOCATION_BITMASK 	(0x00)
*/

#define PSKEY				(0x4004)
#define PROXIMITY_T			(120)		//Maximum Threshold Value to detect an object.
#define PROXIMITY_MIN_CON	(50)		//Minimum Confidence Value representing how confident the sensor is about its reported distance.
#define MIN_ALARM_DIST		(15)
#define WAIT_TIME_LIGHTOFF	(30)		//in Seconds
#define MOTION_INT_RENABLE	(15)		//in Seconds

#define FRIEND1				(0x01)		//Sarthak
#define FRIEND2				(0x04)		//Swarupa

/** Timer Frequency used. */
#define TIMER_CLK_FREQ 		((uint32)32768)

/** Convert seconds to timer ticks. */
#define TIMER_S_TO_TICKS(s) (TIMER_CLK_FREQ * s)

#define SOFT_TIMER_FACTORY_RESET 				(51)
#define SOFT_TIMER_PROVISIONING					(52)
#define SOFT_TIMER_FIND_FRIEND					(53)
#define SOFT_TIMER_LIGHTSTATE_SAVE				(54)
#define SOFT_TIMER_RETRANSMISSION				(55)
#define SOFT_TIMER_PROXIMITY_INTERRUPT_ENABLE	(56)
#define SOFT_TIMER_MOTION_INTERRUPT_ENABLE		(57)
#define SOFT_TIMER_MOTION_LIGHT_OFF				(58)
#define SOFT_TIMER_PARKING_IN_PROCESS			(59)
#define SOFT_TIMER_LED0_ON_DELAY				(60)
#define SOFT_TIMER_LED0_OFF_DELAY				(61)

static PACKSTRUCT(struct light_states
{
	// Light State due to Motion Sensor
	uint8_t onoff_current;
	uint8_t onoff_target;

	//Parking Slot (ps) state due to Proximity Sensor
	uint8_t ps_current;
	uint8_t ps_target;

	//Threshold for Proximity Sensor
	uint16_t proximity_t;
	uint16_t proximity_min_con;
	uint16_t min_alarm_dist;

	// Transition Time Server state
	uint8_t transtime;

	// On Power Up Server state
	uint8_t onpowerup;
})light_states;


// GLOBAL VARIABLES
uint8 num_connections = 0;
static uint8_t conn_handle = 0xFF;
uint16_t pin_read;
uint16_t result;
uint8_t flag1;
uint8_t flag2;
char string_disp[30];
uint8_t netkey_type;
uint16_t key_index;

// GLOBAL VARIABLES
static uint16_t primary_element = 0xFFFF;
static uint8 trid = 0;        /* transaction identifier */
static uint8_t init_complete = 0;
static uint8_t request_count;
static uint8_t empty_count;
static uint16_t friend_address = 0xFFFF;
static uint8_t friend_num = 0;

void initiate_factory_reset(void);
void push_buttons_init(void);
void light_node_init(void);
void disp_device_addr(void);
static void models_init(void);
static int load_ps_data(void);
static int save_ps_data(void);
static void lightstate_save(void);
static void send_pslot_state(void);
static void send_light_state(void);

static void onoff_request(uint16_t model_id,
		uint16_t element_index,
		uint16_t client_addr,
		uint16_t server_addr,
		uint16_t appkey_index,
		const struct mesh_generic_request *request,
		uint32_t transition_ms,
		uint16_t delay_ms,
		uint8_t request_flags);
static void onoff_change(uint16_t model_id,
                         uint16_t element_index,
                         const struct mesh_generic_state *current,
                         const struct mesh_generic_state *target,
                         uint32_t remaining_ms);
static errorcode_t onoff_response(uint16_t element_index,
                                  uint16_t client_addr,
                                  uint16_t appkey_index);
static errorcode_t onoff_update(uint16_t primary_element);
static errorcode_t onoff_update_and_publish(uint16_t primary_element, int retrans);

#endif /* SRC_MAIN_H_ */

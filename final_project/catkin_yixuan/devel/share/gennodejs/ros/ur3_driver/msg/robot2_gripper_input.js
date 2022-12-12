// Auto-generated. Do not edit!

// (in-package ur3_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robot2_gripper_input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DIGIN_2 = null;
      this.AIN0_2 = null;
      this.AIN1_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('DIGIN_2')) {
        this.DIGIN_2 = initObj.DIGIN_2
      }
      else {
        this.DIGIN_2 = 0;
      }
      if (initObj.hasOwnProperty('AIN0_2')) {
        this.AIN0_2 = initObj.AIN0_2
      }
      else {
        this.AIN0_2 = 0.0;
      }
      if (initObj.hasOwnProperty('AIN1_2')) {
        this.AIN1_2 = initObj.AIN1_2
      }
      else {
        this.AIN1_2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot2_gripper_input
    // Serialize message field [DIGIN_2]
    bufferOffset = _serializer.int32(obj.DIGIN_2, buffer, bufferOffset);
    // Serialize message field [AIN0_2]
    bufferOffset = _serializer.float64(obj.AIN0_2, buffer, bufferOffset);
    // Serialize message field [AIN1_2]
    bufferOffset = _serializer.float64(obj.AIN1_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot2_gripper_input
    let len;
    let data = new robot2_gripper_input(null);
    // Deserialize message field [DIGIN_2]
    data.DIGIN_2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [AIN0_2]
    data.AIN0_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AIN1_2]
    data.AIN1_2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot2_gripper_input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5cac449f67c506d08572b8886dce274';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 DIGIN_2 
    float64 AIN0_2
    float64 AIN1_2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot2_gripper_input(null);
    if (msg.DIGIN_2 !== undefined) {
      resolved.DIGIN_2 = msg.DIGIN_2;
    }
    else {
      resolved.DIGIN_2 = 0
    }

    if (msg.AIN0_2 !== undefined) {
      resolved.AIN0_2 = msg.AIN0_2;
    }
    else {
      resolved.AIN0_2 = 0.0
    }

    if (msg.AIN1_2 !== undefined) {
      resolved.AIN1_2 = msg.AIN1_2;
    }
    else {
      resolved.AIN1_2 = 0.0
    }

    return resolved;
    }
};

module.exports = robot2_gripper_input;

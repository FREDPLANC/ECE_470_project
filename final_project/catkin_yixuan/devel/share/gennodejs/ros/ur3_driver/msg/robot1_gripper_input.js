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

class robot1_gripper_input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DIGIN_1 = null;
      this.AIN0_1 = null;
      this.AIN1_1 = null;
    }
    else {
      if (initObj.hasOwnProperty('DIGIN_1')) {
        this.DIGIN_1 = initObj.DIGIN_1
      }
      else {
        this.DIGIN_1 = 0;
      }
      if (initObj.hasOwnProperty('AIN0_1')) {
        this.AIN0_1 = initObj.AIN0_1
      }
      else {
        this.AIN0_1 = 0.0;
      }
      if (initObj.hasOwnProperty('AIN1_1')) {
        this.AIN1_1 = initObj.AIN1_1
      }
      else {
        this.AIN1_1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot1_gripper_input
    // Serialize message field [DIGIN_1]
    bufferOffset = _serializer.int32(obj.DIGIN_1, buffer, bufferOffset);
    // Serialize message field [AIN0_1]
    bufferOffset = _serializer.float64(obj.AIN0_1, buffer, bufferOffset);
    // Serialize message field [AIN1_1]
    bufferOffset = _serializer.float64(obj.AIN1_1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot1_gripper_input
    let len;
    let data = new robot1_gripper_input(null);
    // Deserialize message field [DIGIN_1]
    data.DIGIN_1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [AIN0_1]
    data.AIN0_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AIN1_1]
    data.AIN1_1 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot1_gripper_input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '470db4c19d42bec85fe6c2febed1313f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 DIGIN_1 
    float64 AIN0_1
    float64 AIN1_1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot1_gripper_input(null);
    if (msg.DIGIN_1 !== undefined) {
      resolved.DIGIN_1 = msg.DIGIN_1;
    }
    else {
      resolved.DIGIN_1 = 0
    }

    if (msg.AIN0_1 !== undefined) {
      resolved.AIN0_1 = msg.AIN0_1;
    }
    else {
      resolved.AIN0_1 = 0.0
    }

    if (msg.AIN1_1 !== undefined) {
      resolved.AIN1_1 = msg.AIN1_1;
    }
    else {
      resolved.AIN1_1 = 0.0
    }

    return resolved;
    }
};

module.exports = robot1_gripper_input;

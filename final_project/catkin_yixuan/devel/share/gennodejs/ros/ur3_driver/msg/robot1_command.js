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

class robot1_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination_1 = null;
      this.v_1 = null;
      this.a_1 = null;
      this.io_0_1 = null;
    }
    else {
      if (initObj.hasOwnProperty('destination_1')) {
        this.destination_1 = initObj.destination_1
      }
      else {
        this.destination_1 = [];
      }
      if (initObj.hasOwnProperty('v_1')) {
        this.v_1 = initObj.v_1
      }
      else {
        this.v_1 = 0.0;
      }
      if (initObj.hasOwnProperty('a_1')) {
        this.a_1 = initObj.a_1
      }
      else {
        this.a_1 = 0.0;
      }
      if (initObj.hasOwnProperty('io_0_1')) {
        this.io_0_1 = initObj.io_0_1
      }
      else {
        this.io_0_1 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot1_command
    // Serialize message field [destination_1]
    bufferOffset = _arraySerializer.float64(obj.destination_1, buffer, bufferOffset, null);
    // Serialize message field [v_1]
    bufferOffset = _serializer.float64(obj.v_1, buffer, bufferOffset);
    // Serialize message field [a_1]
    bufferOffset = _serializer.float64(obj.a_1, buffer, bufferOffset);
    // Serialize message field [io_0_1]
    bufferOffset = _serializer.bool(obj.io_0_1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot1_command
    let len;
    let data = new robot1_command(null);
    // Deserialize message field [destination_1]
    data.destination_1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [v_1]
    data.v_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_1]
    data.a_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [io_0_1]
    data.io_0_1 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.destination_1.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot1_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99902d5d43f582b0b0f3d20f4d4b2b9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] destination_1
    float64 v_1
    float64 a_1
    bool io_0_1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot1_command(null);
    if (msg.destination_1 !== undefined) {
      resolved.destination_1 = msg.destination_1;
    }
    else {
      resolved.destination_1 = []
    }

    if (msg.v_1 !== undefined) {
      resolved.v_1 = msg.v_1;
    }
    else {
      resolved.v_1 = 0.0
    }

    if (msg.a_1 !== undefined) {
      resolved.a_1 = msg.a_1;
    }
    else {
      resolved.a_1 = 0.0
    }

    if (msg.io_0_1 !== undefined) {
      resolved.io_0_1 = msg.io_0_1;
    }
    else {
      resolved.io_0_1 = false
    }

    return resolved;
    }
};

module.exports = robot1_command;

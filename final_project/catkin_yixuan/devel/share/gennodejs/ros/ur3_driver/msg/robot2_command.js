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

class robot2_command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination_2 = null;
      this.v_2 = null;
      this.a_2 = null;
      this.io_0_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('destination_2')) {
        this.destination_2 = initObj.destination_2
      }
      else {
        this.destination_2 = [];
      }
      if (initObj.hasOwnProperty('v_2')) {
        this.v_2 = initObj.v_2
      }
      else {
        this.v_2 = 0.0;
      }
      if (initObj.hasOwnProperty('a_2')) {
        this.a_2 = initObj.a_2
      }
      else {
        this.a_2 = 0.0;
      }
      if (initObj.hasOwnProperty('io_0_2')) {
        this.io_0_2 = initObj.io_0_2
      }
      else {
        this.io_0_2 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot2_command
    // Serialize message field [destination_2]
    bufferOffset = _arraySerializer.float64(obj.destination_2, buffer, bufferOffset, null);
    // Serialize message field [v_2]
    bufferOffset = _serializer.float64(obj.v_2, buffer, bufferOffset);
    // Serialize message field [a_2]
    bufferOffset = _serializer.float64(obj.a_2, buffer, bufferOffset);
    // Serialize message field [io_0_2]
    bufferOffset = _serializer.bool(obj.io_0_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot2_command
    let len;
    let data = new robot2_command(null);
    // Deserialize message field [destination_2]
    data.destination_2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [v_2]
    data.v_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_2]
    data.a_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [io_0_2]
    data.io_0_2 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.destination_2.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot2_command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1a5d9f50588237f312ad342ca45045c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] destination_2
    float64 v_2
    float64 a_2
    bool io_0_2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot2_command(null);
    if (msg.destination_2 !== undefined) {
      resolved.destination_2 = msg.destination_2;
    }
    else {
      resolved.destination_2 = []
    }

    if (msg.v_2 !== undefined) {
      resolved.v_2 = msg.v_2;
    }
    else {
      resolved.v_2 = 0.0
    }

    if (msg.a_2 !== undefined) {
      resolved.a_2 = msg.a_2;
    }
    else {
      resolved.a_2 = 0.0
    }

    if (msg.io_0_2 !== undefined) {
      resolved.io_0_2 = msg.io_0_2;
    }
    else {
      resolved.io_0_2 = false
    }

    return resolved;
    }
};

module.exports = robot2_command;

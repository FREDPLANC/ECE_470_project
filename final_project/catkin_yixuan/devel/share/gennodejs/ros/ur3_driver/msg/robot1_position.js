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

class robot1_position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_1 = null;
      this.isReady_1 = null;
    }
    else {
      if (initObj.hasOwnProperty('position_1')) {
        this.position_1 = initObj.position_1
      }
      else {
        this.position_1 = [];
      }
      if (initObj.hasOwnProperty('isReady_1')) {
        this.isReady_1 = initObj.isReady_1
      }
      else {
        this.isReady_1 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot1_position
    // Serialize message field [position_1]
    bufferOffset = _arraySerializer.float64(obj.position_1, buffer, bufferOffset, null);
    // Serialize message field [isReady_1]
    bufferOffset = _serializer.bool(obj.isReady_1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot1_position
    let len;
    let data = new robot1_position(null);
    // Deserialize message field [position_1]
    data.position_1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [isReady_1]
    data.isReady_1 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.position_1.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot1_position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6cead3ecb176587694a624f90d3a7d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] position_1
    bool isReady_1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot1_position(null);
    if (msg.position_1 !== undefined) {
      resolved.position_1 = msg.position_1;
    }
    else {
      resolved.position_1 = []
    }

    if (msg.isReady_1 !== undefined) {
      resolved.isReady_1 = msg.isReady_1;
    }
    else {
      resolved.isReady_1 = false
    }

    return resolved;
    }
};

module.exports = robot1_position;

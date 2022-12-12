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

class robot2_position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_2 = null;
      this.isReady_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('position_2')) {
        this.position_2 = initObj.position_2
      }
      else {
        this.position_2 = [];
      }
      if (initObj.hasOwnProperty('isReady_2')) {
        this.isReady_2 = initObj.isReady_2
      }
      else {
        this.isReady_2 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot2_position
    // Serialize message field [position_2]
    bufferOffset = _arraySerializer.float64(obj.position_2, buffer, bufferOffset, null);
    // Serialize message field [isReady_2]
    bufferOffset = _serializer.bool(obj.isReady_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot2_position
    let len;
    let data = new robot2_position(null);
    // Deserialize message field [position_2]
    data.position_2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [isReady_2]
    data.isReady_2 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.position_2.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot2_position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b665405e743567d05aac6f78168ff841';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] position_2
    bool isReady_2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot2_position(null);
    if (msg.position_2 !== undefined) {
      resolved.position_2 = msg.position_2;
    }
    else {
      resolved.position_2 = []
    }

    if (msg.isReady_2 !== undefined) {
      resolved.isReady_2 = msg.isReady_2;
    }
    else {
      resolved.isReady_2 = false
    }

    return resolved;
    }
};

module.exports = robot2_position;

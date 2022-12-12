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

class robot_position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_new_1 = null;
      this.isReady_new_1 = null;
      this.position_new_2 = null;
      this.isReady_new_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('position_new_1')) {
        this.position_new_1 = initObj.position_new_1
      }
      else {
        this.position_new_1 = [];
      }
      if (initObj.hasOwnProperty('isReady_new_1')) {
        this.isReady_new_1 = initObj.isReady_new_1
      }
      else {
        this.isReady_new_1 = false;
      }
      if (initObj.hasOwnProperty('position_new_2')) {
        this.position_new_2 = initObj.position_new_2
      }
      else {
        this.position_new_2 = [];
      }
      if (initObj.hasOwnProperty('isReady_new_2')) {
        this.isReady_new_2 = initObj.isReady_new_2
      }
      else {
        this.isReady_new_2 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_position
    // Serialize message field [position_new_1]
    bufferOffset = _arraySerializer.float64(obj.position_new_1, buffer, bufferOffset, null);
    // Serialize message field [isReady_new_1]
    bufferOffset = _serializer.bool(obj.isReady_new_1, buffer, bufferOffset);
    // Serialize message field [position_new_2]
    bufferOffset = _arraySerializer.float64(obj.position_new_2, buffer, bufferOffset, null);
    // Serialize message field [isReady_new_2]
    bufferOffset = _serializer.bool(obj.isReady_new_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_position
    let len;
    let data = new robot_position(null);
    // Deserialize message field [position_new_1]
    data.position_new_1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [isReady_new_1]
    data.isReady_new_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position_new_2]
    data.position_new_2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [isReady_new_2]
    data.isReady_new_2 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.position_new_1.length;
    length += 8 * object.position_new_2.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ur3_driver/robot_position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8eb0a358142a84437f7ab31c0470ba46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] position_new_1
    bool isReady_new_1
    float64[] position_new_2
    bool isReady_new_2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_position(null);
    if (msg.position_new_1 !== undefined) {
      resolved.position_new_1 = msg.position_new_1;
    }
    else {
      resolved.position_new_1 = []
    }

    if (msg.isReady_new_1 !== undefined) {
      resolved.isReady_new_1 = msg.isReady_new_1;
    }
    else {
      resolved.isReady_new_1 = false
    }

    if (msg.position_new_2 !== undefined) {
      resolved.position_new_2 = msg.position_new_2;
    }
    else {
      resolved.position_new_2 = []
    }

    if (msg.isReady_new_2 !== undefined) {
      resolved.isReady_new_2 = msg.isReady_new_2;
    }
    else {
      resolved.isReady_new_2 = false
    }

    return resolved;
    }
};

module.exports = robot_position;

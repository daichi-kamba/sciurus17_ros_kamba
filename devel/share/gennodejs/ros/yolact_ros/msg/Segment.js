// Auto-generated. Do not edit!

// (in-package yolact_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Segment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Class = null;
      this.probability = null;
      this.xmin = null;
      this.ymin = null;
      this.xmax = null;
      this.ymax = null;
      this.x_masks = null;
      this.y_masks = null;
    }
    else {
      if (initObj.hasOwnProperty('Class')) {
        this.Class = initObj.Class
      }
      else {
        this.Class = '';
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('xmin')) {
        this.xmin = initObj.xmin
      }
      else {
        this.xmin = 0;
      }
      if (initObj.hasOwnProperty('ymin')) {
        this.ymin = initObj.ymin
      }
      else {
        this.ymin = 0;
      }
      if (initObj.hasOwnProperty('xmax')) {
        this.xmax = initObj.xmax
      }
      else {
        this.xmax = 0;
      }
      if (initObj.hasOwnProperty('ymax')) {
        this.ymax = initObj.ymax
      }
      else {
        this.ymax = 0;
      }
      if (initObj.hasOwnProperty('x_masks')) {
        this.x_masks = initObj.x_masks
      }
      else {
        this.x_masks = [];
      }
      if (initObj.hasOwnProperty('y_masks')) {
        this.y_masks = initObj.y_masks
      }
      else {
        this.y_masks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Segment
    // Serialize message field [Class]
    bufferOffset = _serializer.string(obj.Class, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    // Serialize message field [xmin]
    bufferOffset = _serializer.int32(obj.xmin, buffer, bufferOffset);
    // Serialize message field [ymin]
    bufferOffset = _serializer.int32(obj.ymin, buffer, bufferOffset);
    // Serialize message field [xmax]
    bufferOffset = _serializer.int32(obj.xmax, buffer, bufferOffset);
    // Serialize message field [ymax]
    bufferOffset = _serializer.int32(obj.ymax, buffer, bufferOffset);
    // Serialize message field [x_masks]
    bufferOffset = _arraySerializer.int32(obj.x_masks, buffer, bufferOffset, null);
    // Serialize message field [y_masks]
    bufferOffset = _arraySerializer.int32(obj.y_masks, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Segment
    let len;
    let data = new Segment(null);
    // Deserialize message field [Class]
    data.Class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xmin]
    data.xmin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ymin]
    data.ymin = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [xmax]
    data.xmax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ymax]
    data.ymax = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x_masks]
    data.x_masks = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [y_masks]
    data.y_masks = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Class.length;
    length += 4 * object.x_masks.length;
    length += 4 * object.y_masks.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yolact_ros/Segment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b822283fe5533fac6ff98c2ac9b6f3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Class
    float64 probability
    int32 xmin
    int32 ymin
    int32 xmax
    int32 ymax
    int32[] x_masks
    int32[] y_masks
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Segment(null);
    if (msg.Class !== undefined) {
      resolved.Class = msg.Class;
    }
    else {
      resolved.Class = ''
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.xmin !== undefined) {
      resolved.xmin = msg.xmin;
    }
    else {
      resolved.xmin = 0
    }

    if (msg.ymin !== undefined) {
      resolved.ymin = msg.ymin;
    }
    else {
      resolved.ymin = 0
    }

    if (msg.xmax !== undefined) {
      resolved.xmax = msg.xmax;
    }
    else {
      resolved.xmax = 0
    }

    if (msg.ymax !== undefined) {
      resolved.ymax = msg.ymax;
    }
    else {
      resolved.ymax = 0
    }

    if (msg.x_masks !== undefined) {
      resolved.x_masks = msg.x_masks;
    }
    else {
      resolved.x_masks = []
    }

    if (msg.y_masks !== undefined) {
      resolved.y_masks = msg.y_masks;
    }
    else {
      resolved.y_masks = []
    }

    return resolved;
    }
};

module.exports = Segment;

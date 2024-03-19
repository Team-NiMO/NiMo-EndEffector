// Auto-generated. Do not edit!

// (in-package nimo_end_effector.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class get_datRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_datRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_datRequest
    let len;
    let data = new get_datRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nimo_end_effector/get_datRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_datRequest(null);
    return resolved;
    }
};

class get_datResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nitrate_val = null;
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('nitrate_val')) {
        this.nitrate_val = initObj.nitrate_val
      }
      else {
        this.nitrate_val = 0.0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_datResponse
    // Serialize message field [nitrate_val]
    bufferOffset = _serializer.float64(obj.nitrate_val, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.string(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_datResponse
    let len;
    let data = new get_datResponse(null);
    // Deserialize message field [nitrate_val]
    data.nitrate_val = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.flag);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nimo_end_effector/get_datResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94e2c8ba95addd945b6e068d063d8aa3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 nitrate_val
    string flag
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_datResponse(null);
    if (msg.nitrate_val !== undefined) {
      resolved.nitrate_val = msg.nitrate_val;
    }
    else {
      resolved.nitrate_val = 0.0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: get_datRequest,
  Response: get_datResponse,
  md5sum() { return '94e2c8ba95addd945b6e068d063d8aa3'; },
  datatype() { return 'nimo_end_effector/get_dat'; }
};

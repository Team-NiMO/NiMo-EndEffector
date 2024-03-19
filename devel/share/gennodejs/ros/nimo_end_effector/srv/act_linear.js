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

class act_linearRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuate = null;
    }
    else {
      if (initObj.hasOwnProperty('actuate')) {
        this.actuate = initObj.actuate
      }
      else {
        this.actuate = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type act_linearRequest
    // Serialize message field [actuate]
    bufferOffset = _serializer.string(obj.actuate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type act_linearRequest
    let len;
    let data = new act_linearRequest(null);
    // Deserialize message field [actuate]
    data.actuate = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.actuate);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nimo_end_effector/act_linearRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9bcd8ed7edd58c6cf5c29248918c9c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string actuate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new act_linearRequest(null);
    if (msg.actuate !== undefined) {
      resolved.actuate = msg.actuate;
    }
    else {
      resolved.actuate = ''
    }

    return resolved;
    }
};

class act_linearResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type act_linearResponse
    // Serialize message field [flag]
    bufferOffset = _serializer.string(obj.flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type act_linearResponse
    let len;
    let data = new act_linearResponse(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.flag);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nimo_end_effector/act_linearResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1042664ff3b165ca1987ef393c5212a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string flag
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new act_linearResponse(null);
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
  Request: act_linearRequest,
  Response: act_linearResponse,
  md5sum() { return '63835d95a9bc618eb2108b4cd1999061'; },
  datatype() { return 'nimo_end_effector/act_linear'; }
};

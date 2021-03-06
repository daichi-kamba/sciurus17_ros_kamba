# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yolact_ros/SegmentationResult.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import yolact_ros.msg

class SegmentationResult(genpy.Message):
  _md5sum = "d543f9c9ec050563814d51c52fe7fbc5"
  _type = "yolact_ros/SegmentationResult"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result definition
yolact_ros/Segments segments
int32 id


================================================================================
MSG: yolact_ros/Segments
Header header
Header image_header
Segment[] segments

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: yolact_ros/Segment
string Class
float64 probability
int32 xmin
int32 ymin
int32 xmax
int32 ymax
int32[] x_masks
int32[] y_masks
"""
  __slots__ = ['segments','id']
  _slot_types = ['yolact_ros/Segments','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       segments,id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SegmentationResult, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.segments is None:
        self.segments = yolact_ros.msg.Segments()
      if self.id is None:
        self.id = 0
    else:
      self.segments = yolact_ros.msg.Segments()
      self.id = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.segments.header.seq, _x.segments.header.stamp.secs, _x.segments.header.stamp.nsecs))
      _x = self.segments.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.segments.image_header.seq, _x.segments.image_header.stamp.secs, _x.segments.image_header.stamp.nsecs))
      _x = self.segments.image_header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.segments.segments)
      buff.write(_struct_I.pack(length))
      for val1 in self.segments.segments:
        _x = val1.Class
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_d4i().pack(_x.probability, _x.xmin, _x.ymin, _x.xmax, _x.ymax))
        length = len(val1.x_masks)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(struct.Struct(pattern).pack(*val1.x_masks))
        length = len(val1.y_masks)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(struct.Struct(pattern).pack(*val1.y_masks))
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.segments is None:
        self.segments = yolact_ros.msg.Segments()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.segments.header.seq, _x.segments.header.stamp.secs, _x.segments.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.segments.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.segments.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.segments.image_header.seq, _x.segments.image_header.stamp.secs, _x.segments.image_header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.segments.image_header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.segments.image_header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.segments.segments = []
      for i in range(0, length):
        val1 = yolact_ros.msg.Segment()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.Class = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.Class = str[start:end]
        _x = val1
        start = end
        end += 24
        (_x.probability, _x.xmin, _x.ymin, _x.xmax, _x.ymax,) = _get_struct_d4i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.x_masks = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.y_masks = s.unpack(str[start:end])
        self.segments.segments.append(val1)
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.segments.header.seq, _x.segments.header.stamp.secs, _x.segments.header.stamp.nsecs))
      _x = self.segments.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3I().pack(_x.segments.image_header.seq, _x.segments.image_header.stamp.secs, _x.segments.image_header.stamp.nsecs))
      _x = self.segments.image_header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.segments.segments)
      buff.write(_struct_I.pack(length))
      for val1 in self.segments.segments:
        _x = val1.Class
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_d4i().pack(_x.probability, _x.xmin, _x.ymin, _x.xmax, _x.ymax))
        length = len(val1.x_masks)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(val1.x_masks.tostring())
        length = len(val1.y_masks)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(val1.y_masks.tostring())
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.segments is None:
        self.segments = yolact_ros.msg.Segments()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.segments.header.seq, _x.segments.header.stamp.secs, _x.segments.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.segments.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.segments.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.segments.image_header.seq, _x.segments.image_header.stamp.secs, _x.segments.image_header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.segments.image_header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.segments.image_header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.segments.segments = []
      for i in range(0, length):
        val1 = yolact_ros.msg.Segment()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.Class = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.Class = str[start:end]
        _x = val1
        start = end
        end += 24
        (_x.probability, _x.xmin, _x.ymin, _x.xmax, _x.ymax,) = _get_struct_d4i().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.x_masks = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.y_masks = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
        self.segments.segments.append(val1)
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_d4i = None
def _get_struct_d4i():
    global _struct_d4i
    if _struct_d4i is None:
        _struct_d4i = struct.Struct("<d4i")
    return _struct_d4i
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i

# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ur3_driver/robot1_command.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class robot1_command(genpy.Message):
  _md5sum = "99902d5d43f582b0b0f3d20f4d4b2b9c"
  _type = "ur3_driver/robot1_command"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64[] destination_1
float64 v_1
float64 a_1
bool io_0_1"""
  __slots__ = ['destination_1','v_1','a_1','io_0_1']
  _slot_types = ['float64[]','float64','float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       destination_1,v_1,a_1,io_0_1

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(robot1_command, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.destination_1 is None:
        self.destination_1 = []
      if self.v_1 is None:
        self.v_1 = 0.
      if self.a_1 is None:
        self.a_1 = 0.
      if self.io_0_1 is None:
        self.io_0_1 = False
    else:
      self.destination_1 = []
      self.v_1 = 0.
      self.a_1 = 0.
      self.io_0_1 = False

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
      length = len(self.destination_1)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.destination_1))
      _x = self
      buff.write(_get_struct_2dB().pack(_x.v_1, _x.a_1, _x.io_0_1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.destination_1 = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 17
      (_x.v_1, _x.a_1, _x.io_0_1,) = _get_struct_2dB().unpack(str[start:end])
      self.io_0_1 = bool(self.io_0_1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.destination_1)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.destination_1.tostring())
      _x = self
      buff.write(_get_struct_2dB().pack(_x.v_1, _x.a_1, _x.io_0_1))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.destination_1 = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 17
      (_x.v_1, _x.a_1, _x.io_0_1,) = _get_struct_2dB().unpack(str[start:end])
      self.io_0_1 = bool(self.io_0_1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2dB = None
def _get_struct_2dB():
    global _struct_2dB
    if _struct_2dB is None:
        _struct_2dB = struct.Struct("<2dB")
    return _struct_2dB

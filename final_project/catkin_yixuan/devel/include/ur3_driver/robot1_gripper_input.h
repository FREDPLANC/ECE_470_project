// Generated by gencpp from file ur3_driver/robot1_gripper_input.msg
// DO NOT EDIT!


#ifndef UR3_DRIVER_MESSAGE_ROBOT1_GRIPPER_INPUT_H
#define UR3_DRIVER_MESSAGE_ROBOT1_GRIPPER_INPUT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ur3_driver
{
template <class ContainerAllocator>
struct robot1_gripper_input_
{
  typedef robot1_gripper_input_<ContainerAllocator> Type;

  robot1_gripper_input_()
    : DIGIN_1(0)
    , AIN0_1(0.0)
    , AIN1_1(0.0)  {
    }
  robot1_gripper_input_(const ContainerAllocator& _alloc)
    : DIGIN_1(0)
    , AIN0_1(0.0)
    , AIN1_1(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _DIGIN_1_type;
  _DIGIN_1_type DIGIN_1;

   typedef double _AIN0_1_type;
  _AIN0_1_type AIN0_1;

   typedef double _AIN1_1_type;
  _AIN1_1_type AIN1_1;





  typedef boost::shared_ptr< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> const> ConstPtr;

}; // struct robot1_gripper_input_

typedef ::ur3_driver::robot1_gripper_input_<std::allocator<void> > robot1_gripper_input;

typedef boost::shared_ptr< ::ur3_driver::robot1_gripper_input > robot1_gripper_inputPtr;
typedef boost::shared_ptr< ::ur3_driver::robot1_gripper_input const> robot1_gripper_inputConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur3_driver::robot1_gripper_input_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur3_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'ur3_driver': ['/home/ur3/catkin_yuhaow7/src/drivers/ur3_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "470db4c19d42bec85fe6c2febed1313f";
  }

  static const char* value(const ::ur3_driver::robot1_gripper_input_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x470db4c19d42bec8ULL;
  static const uint64_t static_value2 = 0x5fe6c2febed1313fULL;
};

template<class ContainerAllocator>
struct DataType< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur3_driver/robot1_gripper_input";
  }

  static const char* value(const ::ur3_driver::robot1_gripper_input_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 DIGIN_1 \n\
float64 AIN0_1\n\
float64 AIN1_1\n\
";
  }

  static const char* value(const ::ur3_driver::robot1_gripper_input_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.DIGIN_1);
      stream.next(m.AIN0_1);
      stream.next(m.AIN1_1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot1_gripper_input_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur3_driver::robot1_gripper_input_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur3_driver::robot1_gripper_input_<ContainerAllocator>& v)
  {
    s << indent << "DIGIN_1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.DIGIN_1);
    s << indent << "AIN0_1: ";
    Printer<double>::stream(s, indent + "  ", v.AIN0_1);
    s << indent << "AIN1_1: ";
    Printer<double>::stream(s, indent + "  ", v.AIN1_1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR3_DRIVER_MESSAGE_ROBOT1_GRIPPER_INPUT_H

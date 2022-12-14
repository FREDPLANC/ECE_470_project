// Generated by gencpp from file ur3_driver/robot1_command.msg
// DO NOT EDIT!


#ifndef UR3_DRIVER_MESSAGE_ROBOT1_COMMAND_H
#define UR3_DRIVER_MESSAGE_ROBOT1_COMMAND_H


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
struct robot1_command_
{
  typedef robot1_command_<ContainerAllocator> Type;

  robot1_command_()
    : destination_1()
    , v_1(0.0)
    , a_1(0.0)
    , io_0_1(false)  {
    }
  robot1_command_(const ContainerAllocator& _alloc)
    : destination_1(_alloc)
    , v_1(0.0)
    , a_1(0.0)
    , io_0_1(false)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _destination_1_type;
  _destination_1_type destination_1;

   typedef double _v_1_type;
  _v_1_type v_1;

   typedef double _a_1_type;
  _a_1_type a_1;

   typedef uint8_t _io_0_1_type;
  _io_0_1_type io_0_1;





  typedef boost::shared_ptr< ::ur3_driver::robot1_command_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ur3_driver::robot1_command_<ContainerAllocator> const> ConstPtr;

}; // struct robot1_command_

typedef ::ur3_driver::robot1_command_<std::allocator<void> > robot1_command;

typedef boost::shared_ptr< ::ur3_driver::robot1_command > robot1_commandPtr;
typedef boost::shared_ptr< ::ur3_driver::robot1_command const> robot1_commandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ur3_driver::robot1_command_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ur3_driver::robot1_command_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ur3_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'ur3_driver': ['/home/ur3/catkin_yuhaow7/src/drivers/ur3_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ur3_driver::robot1_command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ur3_driver::robot1_command_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur3_driver::robot1_command_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ur3_driver::robot1_command_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur3_driver::robot1_command_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ur3_driver::robot1_command_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ur3_driver::robot1_command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "99902d5d43f582b0b0f3d20f4d4b2b9c";
  }

  static const char* value(const ::ur3_driver::robot1_command_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x99902d5d43f582b0ULL;
  static const uint64_t static_value2 = 0xb0f3d20f4d4b2b9cULL;
};

template<class ContainerAllocator>
struct DataType< ::ur3_driver::robot1_command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ur3_driver/robot1_command";
  }

  static const char* value(const ::ur3_driver::robot1_command_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ur3_driver::robot1_command_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] destination_1\n\
float64 v_1\n\
float64 a_1\n\
bool io_0_1\n\
";
  }

  static const char* value(const ::ur3_driver::robot1_command_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ur3_driver::robot1_command_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.destination_1);
      stream.next(m.v_1);
      stream.next(m.a_1);
      stream.next(m.io_0_1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot1_command_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ur3_driver::robot1_command_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ur3_driver::robot1_command_<ContainerAllocator>& v)
  {
    s << indent << "destination_1[]" << std::endl;
    for (size_t i = 0; i < v.destination_1.size(); ++i)
    {
      s << indent << "  destination_1[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.destination_1[i]);
    }
    s << indent << "v_1: ";
    Printer<double>::stream(s, indent + "  ", v.v_1);
    s << indent << "a_1: ";
    Printer<double>::stream(s, indent + "  ", v.a_1);
    s << indent << "io_0_1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.io_0_1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UR3_DRIVER_MESSAGE_ROBOT1_COMMAND_H

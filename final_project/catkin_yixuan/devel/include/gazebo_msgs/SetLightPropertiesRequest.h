// Generated by gencpp from file gazebo_msgs/SetLightPropertiesRequest.msg
// DO NOT EDIT!


#ifndef GAZEBO_MSGS_MESSAGE_SETLIGHTPROPERTIESREQUEST_H
#define GAZEBO_MSGS_MESSAGE_SETLIGHTPROPERTIESREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/ColorRGBA.h>

namespace gazebo_msgs
{
template <class ContainerAllocator>
struct SetLightPropertiesRequest_
{
  typedef SetLightPropertiesRequest_<ContainerAllocator> Type;

  SetLightPropertiesRequest_()
    : light_name()
    , diffuse()
    , attenuation_constant(0.0)
    , attenuation_linear(0.0)
    , attenuation_quadratic(0.0)  {
    }
  SetLightPropertiesRequest_(const ContainerAllocator& _alloc)
    : light_name(_alloc)
    , diffuse(_alloc)
    , attenuation_constant(0.0)
    , attenuation_linear(0.0)
    , attenuation_quadratic(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _light_name_type;
  _light_name_type light_name;

   typedef  ::std_msgs::ColorRGBA_<ContainerAllocator>  _diffuse_type;
  _diffuse_type diffuse;

   typedef double _attenuation_constant_type;
  _attenuation_constant_type attenuation_constant;

   typedef double _attenuation_linear_type;
  _attenuation_linear_type attenuation_linear;

   typedef double _attenuation_quadratic_type;
  _attenuation_quadratic_type attenuation_quadratic;





  typedef boost::shared_ptr< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetLightPropertiesRequest_

typedef ::gazebo_msgs::SetLightPropertiesRequest_<std::allocator<void> > SetLightPropertiesRequest;

typedef boost::shared_ptr< ::gazebo_msgs::SetLightPropertiesRequest > SetLightPropertiesRequestPtr;
typedef boost::shared_ptr< ::gazebo_msgs::SetLightPropertiesRequest const> SetLightPropertiesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gazebo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/ur3/catkin_yuhaow7/src/drivers/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "73ad1ac5e9e312ddf7c74f38ad843f34";
  }

  static const char* value(const ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x73ad1ac5e9e312ddULL;
  static const uint64_t static_value2 = 0xf7c74f38ad843f34ULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_msgs/SetLightPropertiesRequest";
  }

  static const char* value(const ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string light_name\n\
std_msgs/ColorRGBA diffuse\n\
float64 attenuation_constant\n\
float64 attenuation_linear\n\
float64 attenuation_quadratic\n\
\n\
================================================================================\n\
MSG: std_msgs/ColorRGBA\n\
float32 r\n\
float32 g\n\
float32 b\n\
float32 a\n\
";
  }

  static const char* value(const ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.light_name);
      stream.next(m.diffuse);
      stream.next(m.attenuation_constant);
      stream.next(m.attenuation_linear);
      stream.next(m.attenuation_quadratic);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLightPropertiesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_msgs::SetLightPropertiesRequest_<ContainerAllocator>& v)
  {
    s << indent << "light_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.light_name);
    s << indent << "diffuse: ";
    s << std::endl;
    Printer< ::std_msgs::ColorRGBA_<ContainerAllocator> >::stream(s, indent + "  ", v.diffuse);
    s << indent << "attenuation_constant: ";
    Printer<double>::stream(s, indent + "  ", v.attenuation_constant);
    s << indent << "attenuation_linear: ";
    Printer<double>::stream(s, indent + "  ", v.attenuation_linear);
    s << indent << "attenuation_quadratic: ";
    Printer<double>::stream(s, indent + "  ", v.attenuation_quadratic);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_MSGS_MESSAGE_SETLIGHTPROPERTIESREQUEST_H

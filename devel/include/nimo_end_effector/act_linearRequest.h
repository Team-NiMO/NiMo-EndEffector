// Generated by gencpp from file nimo_end_effector/act_linearRequest.msg
// DO NOT EDIT!


#ifndef NIMO_END_EFFECTOR_MESSAGE_ACT_LINEARREQUEST_H
#define NIMO_END_EFFECTOR_MESSAGE_ACT_LINEARREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace nimo_end_effector
{
template <class ContainerAllocator>
struct act_linearRequest_
{
  typedef act_linearRequest_<ContainerAllocator> Type;

  act_linearRequest_()
    : actuate()  {
    }
  act_linearRequest_(const ContainerAllocator& _alloc)
    : actuate(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _actuate_type;
  _actuate_type actuate;





  typedef boost::shared_ptr< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> const> ConstPtr;

}; // struct act_linearRequest_

typedef ::nimo_end_effector::act_linearRequest_<std::allocator<void> > act_linearRequest;

typedef boost::shared_ptr< ::nimo_end_effector::act_linearRequest > act_linearRequestPtr;
typedef boost::shared_ptr< ::nimo_end_effector::act_linearRequest const> act_linearRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nimo_end_effector::act_linearRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nimo_end_effector::act_linearRequest_<ContainerAllocator1> & lhs, const ::nimo_end_effector::act_linearRequest_<ContainerAllocator2> & rhs)
{
  return lhs.actuate == rhs.actuate;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nimo_end_effector::act_linearRequest_<ContainerAllocator1> & lhs, const ::nimo_end_effector::act_linearRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nimo_end_effector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c9bcd8ed7edd58c6cf5c29248918c9c3";
  }

  static const char* value(const ::nimo_end_effector::act_linearRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc9bcd8ed7edd58c6ULL;
  static const uint64_t static_value2 = 0xcf5c29248918c9c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nimo_end_effector/act_linearRequest";
  }

  static const char* value(const ::nimo_end_effector::act_linearRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string actuate\n"
;
  }

  static const char* value(const ::nimo_end_effector::act_linearRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.actuate);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct act_linearRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nimo_end_effector::act_linearRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nimo_end_effector::act_linearRequest_<ContainerAllocator>& v)
  {
    s << indent << "actuate: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.actuate);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIMO_END_EFFECTOR_MESSAGE_ACT_LINEARREQUEST_H

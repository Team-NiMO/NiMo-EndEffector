// Generated by gencpp from file nimo_end_effector/get_cal_datResponse.msg
// DO NOT EDIT!


#ifndef NIMO_END_EFFECTOR_MESSAGE_GET_CAL_DATRESPONSE_H
#define NIMO_END_EFFECTOR_MESSAGE_GET_CAL_DATRESPONSE_H


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
struct get_cal_datResponse_
{
  typedef get_cal_datResponse_<ContainerAllocator> Type;

  get_cal_datResponse_()
    : flag()  {
    }
  get_cal_datResponse_(const ContainerAllocator& _alloc)
    : flag(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _flag_type;
  _flag_type flag;





  typedef boost::shared_ptr< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_cal_datResponse_

typedef ::nimo_end_effector::get_cal_datResponse_<std::allocator<void> > get_cal_datResponse;

typedef boost::shared_ptr< ::nimo_end_effector::get_cal_datResponse > get_cal_datResponsePtr;
typedef boost::shared_ptr< ::nimo_end_effector::get_cal_datResponse const> get_cal_datResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator1> & lhs, const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator2> & rhs)
{
  return lhs.flag == rhs.flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator1> & lhs, const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace nimo_end_effector

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1042664ff3b165ca1987ef393c5212a5";
  }

  static const char* value(const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1042664ff3b165caULL;
  static const uint64_t static_value2 = 0x1987ef393c5212a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "nimo_end_effector/get_cal_datResponse";
  }

  static const char* value(const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string flag\n"
"\n"
;
  }

  static const char* value(const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_cal_datResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::nimo_end_effector::get_cal_datResponse_<ContainerAllocator>& v)
  {
    s << indent << "flag: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NIMO_END_EFFECTOR_MESSAGE_GET_CAL_DATRESPONSE_H

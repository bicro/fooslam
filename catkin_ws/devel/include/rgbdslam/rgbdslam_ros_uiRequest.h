/* Software License Agreement (BSD License)
 *
 * Copyright (c) 2011, Willow Garage, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above
 *    copyright notice, this list of conditions and the following
 *    disclaimer in the documentation and/or other materials provided
 *    with the distribution.
 *  * Neither the name of Willow Garage, Inc. nor the names of its
 *    contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Auto-generated by genmsg_cpp from file /home/viki/catkin_ws/src/rgbdslam_v2/srv/rgbdslam_ros_ui.srv
 *
 */


#ifndef RGBDSLAM_MESSAGE_RGBDSLAM_ROS_UIREQUEST_H
#define RGBDSLAM_MESSAGE_RGBDSLAM_ROS_UIREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rgbdslam
{
template <class ContainerAllocator>
struct rgbdslam_ros_uiRequest_
{
  typedef rgbdslam_ros_uiRequest_<ContainerAllocator> Type;

  rgbdslam_ros_uiRequest_()
    : command()  {
    }
  rgbdslam_ros_uiRequest_(const ContainerAllocator& _alloc)
    : command(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;




  typedef boost::shared_ptr< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> const> ConstPtr;

}; // struct rgbdslam_ros_uiRequest_

typedef ::rgbdslam::rgbdslam_ros_uiRequest_<std::allocator<void> > rgbdslam_ros_uiRequest;

typedef boost::shared_ptr< ::rgbdslam::rgbdslam_ros_uiRequest > rgbdslam_ros_uiRequestPtr;
typedef boost::shared_ptr< ::rgbdslam::rgbdslam_ros_uiRequest const> rgbdslam_ros_uiRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rgbdslam

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cba5e21e920a3a2b7b375cb65b64cdea";
  }

  static const char* value(const ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcba5e21e920a3a2bULL;
  static const uint64_t static_value2 = 0x7b375cb65b64cdeaULL;
};

template<class ContainerAllocator>
struct DataType< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rgbdslam/rgbdslam_ros_uiRequest";
  }

  static const char* value(const ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string command\n\
";
  }

  static const char* value(const ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct rgbdslam_ros_uiRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rgbdslam::rgbdslam_ros_uiRequest_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RGBDSLAM_MESSAGE_RGBDSLAM_ROS_UIREQUEST_H

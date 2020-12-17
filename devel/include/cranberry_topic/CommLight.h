// Generated by gencpp from file cranberry_topic/CommLight.msg
// DO NOT EDIT!


#ifndef CRANBERRY_TOPIC_MESSAGE_COMMLIGHT_H
#define CRANBERRY_TOPIC_MESSAGE_COMMLIGHT_H

#include <ros/service_traits.h>


#include <cranberry_topic/CommLightRequest.h>
#include <cranberry_topic/CommLightResponse.h>


namespace cranberry_topic
{

struct CommLight
{

typedef CommLightRequest Request;
typedef CommLightResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CommLight
} // namespace cranberry_topic


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cranberry_topic::CommLight > {
  static const char* value()
  {
    return "3fb457a38866a7644279b98b76746b3c";
  }

  static const char* value(const ::cranberry_topic::CommLight&) { return value(); }
};

template<>
struct DataType< ::cranberry_topic::CommLight > {
  static const char* value()
  {
    return "cranberry_topic/CommLight";
  }

  static const char* value(const ::cranberry_topic::CommLight&) { return value(); }
};


// service_traits::MD5Sum< ::cranberry_topic::CommLightRequest> should match
// service_traits::MD5Sum< ::cranberry_topic::CommLight >
template<>
struct MD5Sum< ::cranberry_topic::CommLightRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cranberry_topic::CommLight >::value();
  }
  static const char* value(const ::cranberry_topic::CommLightRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cranberry_topic::CommLightRequest> should match
// service_traits::DataType< ::cranberry_topic::CommLight >
template<>
struct DataType< ::cranberry_topic::CommLightRequest>
{
  static const char* value()
  {
    return DataType< ::cranberry_topic::CommLight >::value();
  }
  static const char* value(const ::cranberry_topic::CommLightRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cranberry_topic::CommLightResponse> should match
// service_traits::MD5Sum< ::cranberry_topic::CommLight >
template<>
struct MD5Sum< ::cranberry_topic::CommLightResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cranberry_topic::CommLight >::value();
  }
  static const char* value(const ::cranberry_topic::CommLightResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cranberry_topic::CommLightResponse> should match
// service_traits::DataType< ::cranberry_topic::CommLight >
template<>
struct DataType< ::cranberry_topic::CommLightResponse>
{
  static const char* value()
  {
    return DataType< ::cranberry_topic::CommLight >::value();
  }
  static const char* value(const ::cranberry_topic::CommLightResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CRANBERRY_TOPIC_MESSAGE_COMMLIGHT_H

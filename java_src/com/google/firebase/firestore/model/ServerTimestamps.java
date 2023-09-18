package com.google.firebase.firestore.model;

import com.google.firebase.Timestamp;
import com.google.firestore.p021v1.MapValue;
import com.google.firestore.p021v1.Value;
/* loaded from: classes4.dex */
public final class ServerTimestamps {
    public static boolean isServerTimestamp(Value value) {
        Value fieldsOrDefault = value != null ? value.getMapValue().getFieldsOrDefault("__type__", null) : null;
        return fieldsOrDefault != null && "server_timestamp".equals(fieldsOrDefault.getStringValue());
    }

    public static Value valueOf(Timestamp timestamp, Value value) {
        MapValue.Builder putFields = MapValue.newBuilder().putFields("__type__", Value.newBuilder().setStringValue("server_timestamp").build()).putFields("__local_write_time__", Value.newBuilder().setTimestampValue(com.google.protobuf.Timestamp.newBuilder().setSeconds(timestamp.getSeconds()).setNanos(timestamp.getNanoseconds())).build());
        if (value != null) {
            putFields.putFields("__previous_value__", value);
        }
        return Value.newBuilder().setMapValue(putFields).build();
    }

    public static Value getPreviousValue(Value value) {
        Value fieldsOrDefault = value.getMapValue().getFieldsOrDefault("__previous_value__", null);
        return isServerTimestamp(fieldsOrDefault) ? getPreviousValue(fieldsOrDefault) : fieldsOrDefault;
    }

    public static com.google.protobuf.Timestamp getLocalWriteTime(Value value) {
        return value.getMapValue().getFieldsOrThrow("__local_write_time__").getTimestampValue();
    }
}

package com.github.salomonbrys.kotson;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Element.kt */
/* loaded from: classes.dex */
public final class ElementKt {
    public static final String getString(JsonElement receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        String asString = receiver.getAsString();
        Intrinsics.checkExpressionValueIsNotNull(asString, "asString");
        return asString;
    }

    public static final int getInt(JsonElement receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return receiver.getAsInt();
    }

    public static final long getLong(JsonElement receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return receiver.getAsLong();
    }

    public static final JsonArray getArray(JsonElement receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        JsonArray asJsonArray = receiver.getAsJsonArray();
        Intrinsics.checkExpressionValueIsNotNull(asJsonArray, "asJsonArray");
        return asJsonArray;
    }

    public static final JsonObject getObj(JsonElement receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        JsonObject asJsonObject = receiver.getAsJsonObject();
        Intrinsics.checkExpressionValueIsNotNull(asJsonObject, "asJsonObject");
        return asJsonObject;
    }

    static {
        Intrinsics.checkExpressionValueIsNotNull(JsonNull.INSTANCE, "JsonNull.INSTANCE");
    }

    public static final JsonElement get(JsonElement receiver, String key) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(key, "key");
        return getNotNull(getObj(receiver), key);
    }

    public static final JsonElement getNotNull(JsonObject receiver, String key) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(key, "key");
        JsonElement jsonElement = receiver.get(key);
        if (jsonElement != null) {
            return jsonElement;
        }
        throw new NoSuchElementException("'" + key + "' is not found");
    }

    public static final void addProperty(JsonObject receiver, String property, JsonElement jsonElement) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(property, "property");
        receiver.add(property, jsonElement);
    }
}

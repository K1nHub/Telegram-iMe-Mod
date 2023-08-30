package com.github.salomonbrys.kotson;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonElement;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GsonBuilder.kt */
/* loaded from: classes.dex */
public final class DeserializerArg {
    private final Context context;
    private final JsonElement json;
    private final Type type;

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeserializerArg) {
                DeserializerArg deserializerArg = (DeserializerArg) obj;
                return Intrinsics.areEqual(this.json, deserializerArg.json) && Intrinsics.areEqual(this.type, deserializerArg.type) && Intrinsics.areEqual(this.context, deserializerArg.context);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        JsonElement jsonElement = this.json;
        int hashCode = (jsonElement != null ? jsonElement.hashCode() : 0) * 31;
        Type type = this.type;
        int hashCode2 = (hashCode + (type != null ? type.hashCode() : 0)) * 31;
        Context context = this.context;
        return hashCode2 + (context != null ? context.hashCode() : 0);
    }

    public String toString() {
        return "DeserializerArg(json=" + this.json + ", type=" + this.type + ", context=" + this.context + ")";
    }

    public DeserializerArg(JsonElement json, Type type, Context context) {
        Intrinsics.checkParameterIsNotNull(json, "json");
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.json = json;
        this.type = type;
        this.context = context;
    }

    public final JsonElement getJson() {
        return this.json;
    }

    public final Context getContext() {
        return this.context;
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class Context implements JsonDeserializationContext {
        private final JsonDeserializationContext gsonContext;

        @Override // com.google.gson.JsonDeserializationContext
        public <T> T deserialize(JsonElement jsonElement, Type type) {
            return (T) this.gsonContext.deserialize(jsonElement, type);
        }

        public Context(JsonDeserializationContext gsonContext) {
            Intrinsics.checkParameterIsNotNull(gsonContext, "gsonContext");
            this.gsonContext = gsonContext;
        }

        public final JsonDeserializationContext getGsonContext() {
            return this.gsonContext;
        }
    }
}

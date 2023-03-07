package com.github.salomonbrys.kotson;

import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GsonBuilder.kt */
/* loaded from: classes.dex */
public final class SerializerArg<T> {
    private final Context context;
    private final T src;
    private final Type type;

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SerializerArg) {
                SerializerArg serializerArg = (SerializerArg) obj;
                return Intrinsics.areEqual(this.src, serializerArg.src) && Intrinsics.areEqual(this.type, serializerArg.type) && Intrinsics.areEqual(this.context, serializerArg.context);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        T t = this.src;
        int hashCode = (t != null ? t.hashCode() : 0) * 31;
        Type type = this.type;
        int hashCode2 = (hashCode + (type != null ? type.hashCode() : 0)) * 31;
        Context context = this.context;
        return hashCode2 + (context != null ? context.hashCode() : 0);
    }

    public String toString() {
        return "SerializerArg(src=" + this.src + ", type=" + this.type + ", context=" + this.context + ")";
    }

    public SerializerArg(T t, Type type, Context context) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.src = t;
        this.type = type;
        this.context = context;
    }

    public final T getSrc() {
        return this.src;
    }

    public final Context getContext() {
        return this.context;
    }

    /* compiled from: GsonBuilder.kt */
    /* loaded from: classes.dex */
    public static final class Context implements JsonSerializationContext {
        private final JsonSerializationContext gsonContext;

        @Override // com.google.gson.JsonSerializationContext
        public JsonElement serialize(Object obj) {
            return this.gsonContext.serialize(obj);
        }

        public Context(JsonSerializationContext gsonContext) {
            Intrinsics.checkParameterIsNotNull(gsonContext, "gsonContext");
            this.gsonContext = gsonContext;
        }
    }
}

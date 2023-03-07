package com.github.salomonbrys.kotson;

import com.github.salomonbrys.kotson.DeserializerArg;
import com.github.salomonbrys.kotson.SerializerArg;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
/* compiled from: GsonBuilder.kt */
/* loaded from: classes.dex */
public final class GsonBuilderKt {
    public static final boolean isWildcard(ParameterizedType receiver) {
        Type type;
        boolean contains;
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        ref$BooleanRef.element = false;
        Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
        ref$BooleanRef2.element = false;
        Ref$BooleanRef ref$BooleanRef3 = new Ref$BooleanRef();
        ref$BooleanRef3.element = false;
        Type rawType = receiver.getRawType();
        if (rawType == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
        }
        TypeVariable[] typeParameters = ((Class) rawType).getTypeParameters();
        int i = 0;
        int i2 = 0;
        while (i < typeParameters.length) {
            TypeVariable typeVariable = typeParameters[i];
            int i3 = i2 + 1;
            Type type2 = receiver.getActualTypeArguments()[i2];
            if (type2 instanceof WildcardType) {
                Type[] bounds = typeVariable.getBounds();
                int i4 = 0;
                while (true) {
                    if (i4 >= bounds.length) {
                        type = null;
                        break;
                    }
                    type = bounds[i4];
                    contains = ArraysKt___ArraysKt.contains(((WildcardType) type2).getUpperBounds(), type);
                    if (contains) {
                        break;
                    }
                    i4++;
                }
                if (type != null) {
                    if (Intrinsics.areEqual(type, Object.class)) {
                        ref$BooleanRef.element = true;
                    } else {
                        ref$BooleanRef2.element = true;
                    }
                } else {
                    ref$BooleanRef3.element = true;
                }
            } else {
                ref$BooleanRef3.element = true;
            }
            i++;
            i2 = i3;
        }
        boolean z = ref$BooleanRef.element;
        if (!z || !ref$BooleanRef3.element) {
            return z || (ref$BooleanRef2.element && !ref$BooleanRef3.element);
        }
        throw new IllegalArgumentException("Either none or all type parameters can be wildcard in " + receiver);
    }

    public static final Type removeTypeWildcards(Type type) {
        int collectionSizeOrDefault;
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            ArrayList<Type> arrayList = new ArrayList(actualTypeArguments.length);
            for (Type type2 : actualTypeArguments) {
                if (type2 instanceof WildcardType) {
                    type2 = ((WildcardType) type2).getUpperBounds()[0];
                }
                arrayList.add(type2);
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (Type it : arrayList) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList2.add(removeTypeWildcards(it));
            }
            Object[] array = arrayList2.toArray(new Type[arrayList2.size()]);
            if (array != null) {
                Type[] typeArr = (Type[]) array;
                Type type3 = TypeToken.getParameterized(parameterizedType.getRawType(), (Type[]) Arrays.copyOf(typeArr, typeArr.length)).getType();
                Intrinsics.checkExpressionValueIsNotNull(type3, "TypeToken.getParameteriz…rawType, *arguments).type");
                return type3;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        return type;
    }

    public static final <T> JsonSerializer<T> jsonSerializer(final Function1<? super SerializerArg<T>, ? extends JsonElement> serializer) {
        Intrinsics.checkParameterIsNotNull(serializer, "serializer");
        return new JsonSerializer<T>() { // from class: com.github.salomonbrys.kotson.GsonBuilderKt$jsonSerializer$1
            @Override // com.google.gson.JsonSerializer
            public final JsonElement serialize(T src, Type type, JsonSerializationContext context) {
                Function1 function1 = Function1.this;
                Intrinsics.checkExpressionValueIsNotNull(src, "src");
                Intrinsics.checkExpressionValueIsNotNull(type, "type");
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                return (JsonElement) function1.invoke(new SerializerArg(src, type, new SerializerArg.Context(context)));
            }
        };
    }

    public static final <T> JsonDeserializer<T> jsonDeserializer(final Function1<? super DeserializerArg, ? extends T> deserializer) {
        Intrinsics.checkParameterIsNotNull(deserializer, "deserializer");
        return new JsonDeserializer<T>() { // from class: com.github.salomonbrys.kotson.GsonBuilderKt$jsonDeserializer$1
            @Override // com.google.gson.JsonDeserializer
            public final T deserialize(JsonElement json, Type type, JsonDeserializationContext context) {
                Function1 function1 = Function1.this;
                Intrinsics.checkExpressionValueIsNotNull(json, "json");
                Intrinsics.checkExpressionValueIsNotNull(type, "type");
                Intrinsics.checkExpressionValueIsNotNull(context, "context");
                return (T) function1.invoke(new DeserializerArg(json, type, new DeserializerArg.Context(context)));
            }
        };
    }
}

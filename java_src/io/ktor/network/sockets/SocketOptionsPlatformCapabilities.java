package io.ktor.network.sockets;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.channels.DatagramChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
/* compiled from: SocketOptionsPlatformCapabilities.kt */
/* loaded from: classes4.dex */
public final class SocketOptionsPlatformCapabilities {
    public static final SocketOptionsPlatformCapabilities INSTANCE = new SocketOptionsPlatformCapabilities();
    private static final Method channelSetOption;
    private static final Method datagramSetOption;
    private static final Method serverChannelSetOption;
    private static final Map<String, Field> standardSocketOptions;

    private SocketOptionsPlatformCapabilities() {
    }

    static {
        Map emptyMap;
        Method method;
        Method method2;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        try {
            Field[] fields = Class.forName("java.net.StandardSocketOptions").getFields();
            if (fields == null) {
                emptyMap = MapsKt__MapsKt.emptyMap();
            } else {
                ArrayList arrayList = new ArrayList();
                for (Field field : fields) {
                    int modifiers = field.getModifiers();
                    if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && Modifier.isPublic(modifiers)) {
                        arrayList.add(field);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                emptyMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj : arrayList) {
                    String name = ((Field) obj).getName();
                    Intrinsics.checkNotNullExpressionValue(name, "it.name");
                    emptyMap.put(name, obj);
                }
            }
        } catch (Throwable unused) {
            emptyMap = MapsKt__MapsKt.emptyMap();
        }
        standardSocketOptions = emptyMap;
        Method method3 = null;
        try {
            Class<?> cls = Class.forName("java.net.SocketOption");
            Class<?> cls2 = Class.forName("java.nio.channels.SocketChannel");
            Method[] methods = cls2.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods, "socketChannelClass.methods");
            int length = methods.length;
            for (int i = 0; i < length; i++) {
                method = methods[i];
                int modifiers2 = method.getModifiers();
                if ((Modifier.isPublic(modifiers2) && !Modifier.isStatic(modifiers2)) && Intrinsics.areEqual(method.getName(), "setOption") && method.getParameterTypes().length == 2 && Intrinsics.areEqual(method.getReturnType(), cls2) && Intrinsics.areEqual(method.getParameterTypes()[0], cls) && Intrinsics.areEqual(method.getParameterTypes()[1], Object.class)) {
                    break;
                }
            }
        } catch (Throwable unused2) {
        }
        method = null;
        channelSetOption = method;
        try {
            Class<?> cls3 = Class.forName("java.net.SocketOption");
            Class<?> cls4 = Class.forName("java.nio.channels.ServerSocketChannel");
            Method[] methods2 = cls4.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods2, "socketChannelClass.methods");
            int length2 = methods2.length;
            for (int i2 = 0; i2 < length2; i2++) {
                method2 = methods2[i2];
                int modifiers3 = method2.getModifiers();
                if ((Modifier.isPublic(modifiers3) && !Modifier.isStatic(modifiers3)) && Intrinsics.areEqual(method2.getName(), "setOption") && method2.getParameterTypes().length == 2 && Intrinsics.areEqual(method2.getReturnType(), cls4) && Intrinsics.areEqual(method2.getParameterTypes()[0], cls3) && Intrinsics.areEqual(method2.getParameterTypes()[1], Object.class)) {
                    break;
                }
            }
        } catch (Throwable unused3) {
        }
        method2 = null;
        serverChannelSetOption = method2;
        try {
            Class<?> cls5 = Class.forName("java.net.SocketOption");
            Class<?> cls6 = Class.forName("java.nio.channels.DatagramChannel");
            Method[] methods3 = cls6.getMethods();
            Intrinsics.checkNotNullExpressionValue(methods3, "socketChannelClass.methods");
            int length3 = methods3.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length3) {
                    break;
                }
                Method method4 = methods3[i3];
                int modifiers4 = method4.getModifiers();
                if ((Modifier.isPublic(modifiers4) && !Modifier.isStatic(modifiers4)) && Intrinsics.areEqual(method4.getName(), "setOption") && method4.getParameterTypes().length == 2 && Intrinsics.areEqual(method4.getReturnType(), cls6) && Intrinsics.areEqual(method4.getParameterTypes()[0], cls5) && Intrinsics.areEqual(method4.getParameterTypes()[1], Object.class)) {
                    method3 = method4;
                    break;
                }
                i3++;
            }
        } catch (Throwable unused4) {
        }
        datagramSetOption = method3;
    }

    public final void setReusePort(SocketChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Object socketOption = socketOption("SO_REUSEPORT");
        Method method = channelSetOption;
        Intrinsics.checkNotNull(method);
        method.invoke(channel, socketOption, Boolean.TRUE);
    }

    public final void setReusePort(ServerSocketChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Object socketOption = socketOption("SO_REUSEPORT");
        Method method = serverChannelSetOption;
        Intrinsics.checkNotNull(method);
        method.invoke(channel, socketOption, Boolean.TRUE);
    }

    public final void setReusePort(DatagramChannel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        Object socketOption = socketOption("SO_REUSEPORT");
        Method method = datagramSetOption;
        Intrinsics.checkNotNull(method);
        method.invoke(channel, socketOption, Boolean.TRUE);
    }

    private final Object socketOption(String str) {
        Field field = standardSocketOptions.get(str);
        Object obj = field != null ? field.get(null) : null;
        if (obj != null) {
            return obj;
        }
        throw new IOException("Socket option " + str + " is not supported");
    }
}

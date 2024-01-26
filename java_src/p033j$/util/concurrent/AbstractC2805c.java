package p033j$.util.concurrent;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.c */
/* loaded from: classes2.dex */
abstract class AbstractC2805c {

    /* renamed from: a */
    private static final Unsafe f779a;

    static {
        Field m627b = m627b();
        m627b.setAccessible(true);
        try {
            f779a = (Unsafe) m627b.get(null);
        } catch (IllegalAccessException e) {
            throw new Error("Couldn't get the Unsafe", e);
        }
    }

    /* renamed from: a */
    public static final int m628a(Unsafe unsafe, Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = unsafe.getIntVolatile(obj, j);
        } while (!unsafe.compareAndSwapInt(obj, j, intVolatile, intVolatile + i));
        return intVolatile;
    }

    /* renamed from: b */
    private static Field m627b() {
        Field[] declaredFields;
        try {
            return Unsafe.class.getDeclaredField("theUnsafe");
        } catch (NoSuchFieldException e) {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                if (Modifier.isStatic(field.getModifiers()) && Unsafe.class.isAssignableFrom(field.getType())) {
                    return field;
                }
            }
            throw new Error("Couldn't find the Unsafe", e);
        }
    }

    /* renamed from: c */
    public static Unsafe m626c() {
        return f779a;
    }
}

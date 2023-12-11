package p033j$.util.concurrent;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import sun.misc.Unsafe;
/* renamed from: j$.util.concurrent.c */
/* loaded from: classes2.dex */
abstract class AbstractC2807c {

    /* renamed from: a */
    private static final Unsafe f779a;

    static {
        Field m624b = m624b();
        m624b.setAccessible(true);
        try {
            f779a = (Unsafe) m624b.get(null);
        } catch (IllegalAccessException e) {
            throw new Error("Couldn't get the Unsafe", e);
        }
    }

    /* renamed from: a */
    public static final int m625a(Unsafe unsafe, Object obj, long j, int i) {
        int intVolatile;
        do {
            intVolatile = unsafe.getIntVolatile(obj, j);
        } while (!unsafe.compareAndSwapInt(obj, j, intVolatile, intVolatile + i));
        return intVolatile;
    }

    /* renamed from: b */
    private static Field m624b() {
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
    public static Unsafe m623c() {
        return f779a;
    }
}

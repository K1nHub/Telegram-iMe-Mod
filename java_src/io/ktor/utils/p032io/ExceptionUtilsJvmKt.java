package io.ktor.utils.p032io;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThrowable;
/* compiled from: ExceptionUtilsJvm.kt */
/* renamed from: io.ktor.utils.io.ExceptionUtilsJvmKt */
/* loaded from: classes4.dex */
public final class ExceptionUtilsJvmKt {
    private static final int throwableFields = fieldsCountOrDefault(Throwable.class, -1);
    private static final ReentrantReadWriteLock cacheLock = new ReentrantReadWriteLock();
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> exceptionCtors = new WeakHashMap<>();

    public static final <E extends Throwable> E tryCopyException(E exception, Throwable cause) {
        Object m1943constructorimpl;
        List<Constructor> sortedWith;
        ReentrantReadWriteLock.ReadLock readLock;
        int readHoldCount;
        ReentrantReadWriteLock.WriteLock writeLock;
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(cause, "cause");
        if (exception instanceof CopyableThrowable) {
            try {
                Result.Companion companion = Result.Companion;
                m1943constructorimpl = Result.m1943constructorimpl(((CopyableThrowable) exception).createCopy());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
            }
            return (E) (Result.m1948isFailureimpl(m1943constructorimpl) ? null : m1943constructorimpl);
        }
        ReentrantReadWriteLock reentrantReadWriteLock = cacheLock;
        ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
        readLock2.lock();
        try {
            Function1<Throwable, Throwable> function1 = exceptionCtors.get(exception.getClass());
            if (function1 != null) {
                return (E) function1.invoke(exception);
            }
            int i = 0;
            if (throwableFields != fieldsCountOrDefault(exception.getClass(), 0)) {
                readLock = reentrantReadWriteLock.readLock();
                readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i2 = 0; i2 < readHoldCount; i2++) {
                    readLock.unlock();
                }
                writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    exceptionCtors.put(exception.getClass(), new Function1() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$tryCopyException$4$1
                        @Override // kotlin.jvm.functions.Function1
                        public final Void invoke(Throwable it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            return null;
                        }
                    });
                    Unit unit = Unit.INSTANCE;
                    return null;
                } finally {
                    while (i < readHoldCount) {
                        readLock.lock();
                        i++;
                    }
                    writeLock.unlock();
                }
            }
            Constructor<?>[] constructors = exception.getClass().getConstructors();
            Intrinsics.checkNotNullExpressionValue(constructors, "exception.javaClass.constructors");
            sortedWith = ArraysKt___ArraysKt.sortedWith(constructors, new Comparator() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$tryCopyException$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
                    return compareValues;
                }
            });
            Function1<Throwable, Throwable> function12 = null;
            for (Constructor constructor : sortedWith) {
                Intrinsics.checkNotNullExpressionValue(constructor, "constructor");
                function12 = createConstructor(constructor);
                if (function12 != null) {
                    break;
                }
            }
            ReentrantReadWriteLock reentrantReadWriteLock2 = cacheLock;
            readLock = reentrantReadWriteLock2.readLock();
            readHoldCount = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i3 = 0; i3 < readHoldCount; i3++) {
                readLock.unlock();
            }
            writeLock = reentrantReadWriteLock2.writeLock();
            writeLock.lock();
            try {
                exceptionCtors.put(exception.getClass(), function12 == null ? new Function1() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$tryCopyException$5$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Void invoke(Throwable it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        return null;
                    }
                } : function12);
                Unit unit2 = Unit.INSTANCE;
                while (i < readHoldCount) {
                    readLock.lock();
                    i++;
                }
                writeLock.unlock();
                if (function12 != null) {
                    return (E) function12.invoke(cause);
                }
                return null;
            } finally {
                while (i < readHoldCount) {
                    readLock.lock();
                    i++;
                }
                writeLock.unlock();
            }
        } finally {
            readLock2.unlock();
        }
    }

    private static final Function1<Throwable, Throwable> createConstructor(final Constructor<?> constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length != 0) {
            if (length != 1) {
                if (length == 2 && Intrinsics.areEqual(parameterTypes[0], String.class) && Intrinsics.areEqual(parameterTypes[1], Throwable.class)) {
                    return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Throwable invoke(Throwable e) {
                            Object m1943constructorimpl;
                            Intrinsics.checkNotNullParameter(e, "e");
                            try {
                                Result.Companion companion = Result.Companion;
                                Object newInstance = constructor.newInstance(e.getMessage(), e);
                                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                                m1943constructorimpl = Result.m1943constructorimpl((Throwable) newInstance);
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.Companion;
                                m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
                            }
                            if (Result.m1948isFailureimpl(m1943constructorimpl)) {
                                m1943constructorimpl = null;
                            }
                            return (Throwable) m1943constructorimpl;
                        }
                    };
                }
                return null;
            }
            Class<?> cls = parameterTypes[0];
            if (Intrinsics.areEqual(cls, Throwable.class)) {
                return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Throwable invoke(Throwable e) {
                        Object m1943constructorimpl;
                        Intrinsics.checkNotNullParameter(e, "e");
                        try {
                            Result.Companion companion = Result.Companion;
                            Object newInstance = constructor.newInstance(e);
                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            m1943constructorimpl = Result.m1943constructorimpl((Throwable) newInstance);
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.Companion;
                            m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
                        }
                        if (Result.m1948isFailureimpl(m1943constructorimpl)) {
                            m1943constructorimpl = null;
                        }
                        return (Throwable) m1943constructorimpl;
                    }
                };
            }
            if (Intrinsics.areEqual(cls, String.class)) {
                return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Throwable invoke(Throwable e) {
                        Object m1943constructorimpl;
                        Intrinsics.checkNotNullParameter(e, "e");
                        try {
                            Result.Companion companion = Result.Companion;
                            Object newInstance = constructor.newInstance(e.getMessage());
                            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                            Throwable th = (Throwable) newInstance;
                            th.initCause(e);
                            m1943constructorimpl = Result.m1943constructorimpl(th);
                        } catch (Throwable th2) {
                            Result.Companion companion2 = Result.Companion;
                            m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th2));
                        }
                        if (Result.m1948isFailureimpl(m1943constructorimpl)) {
                            m1943constructorimpl = null;
                        }
                        return (Throwable) m1943constructorimpl;
                    }
                };
            }
            return null;
        }
        return new Function1<Throwable, Throwable>() { // from class: io.ktor.utils.io.ExceptionUtilsJvmKt$createConstructor$$inlined$safeCtor$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Throwable invoke(Throwable e) {
                Object m1943constructorimpl;
                Intrinsics.checkNotNullParameter(e, "e");
                try {
                    Result.Companion companion = Result.Companion;
                    Object newInstance = constructor.newInstance(new Object[0]);
                    Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Throwable");
                    Throwable th = (Throwable) newInstance;
                    th.initCause(e);
                    m1943constructorimpl = Result.m1943constructorimpl(th);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.Companion;
                    m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m1948isFailureimpl(m1943constructorimpl)) {
                    m1943constructorimpl = null;
                }
                return (Throwable) m1943constructorimpl;
            }
        };
    }

    private static final int fieldsCountOrDefault(Class<?> cls, int i) {
        Integer m1943constructorimpl;
        JvmClassMappingKt.getKotlinClass(cls);
        try {
            Result.Companion companion = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(Integer.valueOf(fieldsCount$default(cls, 0, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m1943constructorimpl = Result.m1943constructorimpl(ResultKt.createFailure(th));
        }
        Integer valueOf = Integer.valueOf(i);
        if (Result.m1948isFailureimpl(m1943constructorimpl)) {
            m1943constructorimpl = valueOf;
        }
        return ((Number) m1943constructorimpl).intValue();
    }

    static /* synthetic */ int fieldsCount$default(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return fieldsCount(cls, i);
    }

    private static final int fieldsCount(Class<?> cls, int i) {
        do {
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "declaredFields");
            int i2 = 0;
            for (Field field : declaredFields) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    i2++;
                }
            }
            i += i2;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i;
    }
}

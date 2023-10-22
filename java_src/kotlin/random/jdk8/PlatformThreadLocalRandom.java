package kotlin.random.jdk8;

import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.AbstractPlatformRandom;
import p033j$.util.concurrent.ThreadLocalRandom;
/* compiled from: PlatformThreadLocalRandom.kt */
/* loaded from: classes4.dex */
public final class PlatformThreadLocalRandom extends AbstractPlatformRandom {
    @Override // kotlin.random.AbstractPlatformRandom
    public Random getImpl() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        Intrinsics.checkNotNullExpressionValue(current, "current()");
        return current;
    }

    @Override // kotlin.random.Random
    public int nextInt(int i, int i2) {
        return ThreadLocalRandom.current().nextInt(i, i2);
    }
}

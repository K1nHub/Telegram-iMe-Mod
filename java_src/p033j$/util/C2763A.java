package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2763A extends AbstractC2764B implements Spliterator {
    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo178b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return false;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.Spliterator
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2839k.m601d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2839k.m600e(this, i);
    }
}

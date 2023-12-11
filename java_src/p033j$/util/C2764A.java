package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2764A extends AbstractC2765B implements Spliterator {
    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo179b(Consumer consumer) {
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
        return AbstractC2840k.m602d(this);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2840k.m601e(this, i);
    }
}

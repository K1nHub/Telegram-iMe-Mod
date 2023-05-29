package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.D */
/* loaded from: classes2.dex */
final class C2650D extends AbstractC2652E implements InterfaceC2732s {
    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return false;
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }
}

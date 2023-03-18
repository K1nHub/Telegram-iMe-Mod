package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.D */
/* loaded from: classes2.dex */
final class C2529D extends AbstractC2531E implements InterfaceC2611s {
    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }
}

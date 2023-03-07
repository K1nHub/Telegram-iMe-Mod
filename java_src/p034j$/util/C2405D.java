package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.D */
/* loaded from: classes2.dex */
final class C2405D extends AbstractC2407E implements InterfaceC2487s {
    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }
}

package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2616A extends AbstractC2621E implements InterfaceC2701s.InterfaceC2702a {
    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a
    /* renamed from: e */
    public void mo141e(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2702a
    /* renamed from: k */
    public boolean mo140k(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return false;
    }

    @Override // p035j$.util.AbstractC2621E, p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2702a trySplit() {
        return null;
    }

    @Override // p035j$.util.AbstractC2621E, p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC3008t trySplit() {
        return null;
    }
}

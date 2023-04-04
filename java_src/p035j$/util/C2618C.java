package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2618C extends AbstractC2621E implements InterfaceC2701s.InterfaceC2704c {
    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m609l(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c
    /* renamed from: d */
    public void mo128d(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m617d(this, consumer);
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

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2704c
    /* renamed from: i */
    public boolean mo127i(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return false;
    }

    @Override // p035j$.util.AbstractC2621E, p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2704c trySplit() {
        return null;
    }

    @Override // p035j$.util.AbstractC2621E, p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC3008t trySplit() {
        return null;
    }
}

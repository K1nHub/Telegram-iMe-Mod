package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2649C extends AbstractC2652E implements InterfaceC2732s.InterfaceC2735c {
    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m599l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c
    /* renamed from: d */
    public void mo119d(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m607d(this, consumer);
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

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2735c
    /* renamed from: i */
    public boolean mo118i(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return false;
    }

    @Override // p034j$.util.AbstractC2652E, p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2735c trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2652E, p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* bridge */ /* synthetic */ InterfaceC3039t trySplit() {
        return null;
    }
}

package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2648B extends AbstractC2652E implements InterfaceC2732s.InterfaceC2734b {
    @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m600k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b
    /* renamed from: c */
    public void mo125c(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m608c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2734b
    /* renamed from: g */
    public boolean mo124g(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return false;
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

    @Override // p034j$.util.AbstractC2652E, p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2734b trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2652E, p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* bridge */ /* synthetic */ InterfaceC3039t trySplit() {
        return null;
    }
}

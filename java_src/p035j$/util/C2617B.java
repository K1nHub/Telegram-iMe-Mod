package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2617B extends AbstractC2621E implements InterfaceC2701s.InterfaceC2703b {
    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m610k(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b
    /* renamed from: c */
    public void mo134c(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m618c(this, consumer);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b
    /* renamed from: g */
    public boolean mo133g(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return false;
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

    @Override // p035j$.util.AbstractC2621E, p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC2701s.InterfaceC2703b trySplit() {
        return null;
    }

    @Override // p035j$.util.AbstractC2621E, p035j$.util.InterfaceC2701s.InterfaceC2702a, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* bridge */ /* synthetic */ InterfaceC3008t trySplit() {
        return null;
    }
}

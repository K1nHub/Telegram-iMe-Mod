package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2647A extends AbstractC2652E implements InterfaceC2732s.InterfaceC2733a {
    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a
    /* renamed from: e */
    public void mo132e(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m609b(this, consumer);
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

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a
    /* renamed from: k */
    public boolean mo131k(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return false;
    }

    @Override // p034j$.util.AbstractC2652E, p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* bridge */ /* synthetic */ InterfaceC2732s.InterfaceC2733a trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2652E, p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* bridge */ /* synthetic */ InterfaceC3039t trySplit() {
        return null;
    }
}

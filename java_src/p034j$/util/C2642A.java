package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2642A extends AbstractC2647E implements InterfaceC2727s.InterfaceC2728a {
    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a
    /* renamed from: e */
    public void mo132e(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m609b(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2654a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2654a.m605f(this, i);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a
    /* renamed from: k */
    public boolean mo131k(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return false;
    }

    @Override // p034j$.util.AbstractC2647E, p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2728a trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2647E, p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC3034t trySplit() {
        return null;
    }
}

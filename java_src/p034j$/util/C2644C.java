package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2644C extends AbstractC2647E implements InterfaceC2727s.InterfaceC2730c {
    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c, p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m599l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c
    /* renamed from: d */
    public void mo119d(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c, p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m607d(this, consumer);
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

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2730c
    /* renamed from: i */
    public boolean mo118i(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return false;
    }

    @Override // p034j$.util.AbstractC2647E, p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC2727s.InterfaceC2730c trySplit() {
        return null;
    }

    @Override // p034j$.util.AbstractC2647E, p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* bridge */ /* synthetic */ InterfaceC3034t trySplit() {
        return null;
    }
}

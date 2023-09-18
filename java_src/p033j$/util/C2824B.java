package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2824B extends AbstractC2828E implements InterfaceC2908s.InterfaceC2910b {
    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b
    /* renamed from: c */
    public void mo143c(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m626c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b
    /* renamed from: g */
    public boolean mo142g(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return false;
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2835a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    @Override // p033j$.util.AbstractC2828E, p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2910b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2828E, p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC3215t trySplit() {
        return null;
    }
}

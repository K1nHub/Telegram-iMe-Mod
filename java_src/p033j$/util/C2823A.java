package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2823A extends AbstractC2828E implements InterfaceC2908s.InterfaceC2909a {
    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a
    /* renamed from: e */
    public void mo150e(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m627b(this, consumer);
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

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a
    /* renamed from: k */
    public boolean mo149k(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return false;
    }

    @Override // p033j$.util.AbstractC2828E, p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2909a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2828E, p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC3215t trySplit() {
        return null;
    }
}

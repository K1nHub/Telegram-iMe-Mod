package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2825C extends AbstractC2828E implements InterfaceC2908s.InterfaceC2911c {
    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c
    /* renamed from: d */
    public void mo137d(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m625d(this, consumer);
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

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2911c
    /* renamed from: i */
    public boolean mo136i(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return false;
    }

    @Override // p033j$.util.AbstractC2828E, p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC2908s.InterfaceC2911c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2828E, p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* bridge */ /* synthetic */ InterfaceC3215t trySplit() {
        return null;
    }
}

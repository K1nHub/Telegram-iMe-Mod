package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.C */
/* loaded from: classes2.dex */
final class C2770C extends AbstractC2773E implements InterfaceC2853s.InterfaceC2856c {
    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c
    /* renamed from: d */
    public void mo137d(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m625d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2856c
    /* renamed from: i */
    public boolean mo136i(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return false;
    }

    @Override // p033j$.util.AbstractC2773E, p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2856c trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2773E, p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC3160t trySplit() {
        return null;
    }
}

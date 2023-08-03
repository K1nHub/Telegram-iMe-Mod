package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.B */
/* loaded from: classes2.dex */
final class C2769B extends AbstractC2773E implements InterfaceC2853s.InterfaceC2855b {
    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b
    /* renamed from: c */
    public void mo143c(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m626c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2855b
    /* renamed from: g */
    public boolean mo142g(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return false;
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

    @Override // p033j$.util.AbstractC2773E, p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2855b trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2773E, p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC3160t trySplit() {
        return null;
    }
}

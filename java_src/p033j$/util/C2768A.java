package p033j$.util;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.A */
/* loaded from: classes2.dex */
final class C2768A extends AbstractC2773E implements InterfaceC2853s.InterfaceC2854a {
    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m601j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a
    /* renamed from: e */
    public void mo132e(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m609b(this, consumer);
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m606e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a
    /* renamed from: k */
    public boolean mo131k(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return false;
    }

    @Override // p033j$.util.AbstractC2773E, p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return null;
    }

    @Override // p033j$.util.AbstractC2773E, p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* bridge */ /* synthetic */ InterfaceC3160t trySplit() {
        return null;
    }
}

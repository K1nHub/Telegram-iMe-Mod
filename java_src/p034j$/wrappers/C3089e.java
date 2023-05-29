package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2725q;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3089e implements InterfaceC2725q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1177a;

    private /* synthetic */ C3089e(PrimitiveIterator.OfLong ofLong) {
        this.f1177a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2725q m143a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3091f ? ((C3091f) ofLong).f1179a : new C3089e(ofLong);
    }

    @Override // p034j$.util.InterfaceC2725q
    /* renamed from: d */
    public /* synthetic */ void mo142d(InterfaceC2705q interfaceC2705q) {
        this.f1177a.forEachRemaining(C3092f0.m138a(interfaceC2705q));
    }

    @Override // p034j$.util.InterfaceC2725q, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1177a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2722o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1177a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1177a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2725q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1177a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1177a.next();
    }

    @Override // p034j$.util.InterfaceC2725q
    public /* synthetic */ long nextLong() {
        return this.f1177a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1177a.remove();
    }
}

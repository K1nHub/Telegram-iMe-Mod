package p035j$.wrappers;

import java.util.PrimitiveIterator;
import p035j$.util.InterfaceC2699q;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3063e implements InterfaceC2699q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1179a;

    private /* synthetic */ C3063e(PrimitiveIterator.OfLong ofLong) {
        this.f1179a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2699q m152a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3065f ? ((C3065f) ofLong).f1181a : new C3063e(ofLong);
    }

    @Override // p035j$.util.InterfaceC2699q
    /* renamed from: d */
    public /* synthetic */ void mo151d(InterfaceC2679q interfaceC2679q) {
        this.f1179a.forEachRemaining(C3066f0.m147a(interfaceC2679q));
    }

    @Override // p035j$.util.InterfaceC2699q, p035j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1179a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2696o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1179a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1179a.hasNext();
    }

    @Override // p035j$.util.InterfaceC2699q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1179a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1179a.next();
    }

    @Override // p035j$.util.InterfaceC2699q
    public /* synthetic */ long nextLong() {
        return this.f1179a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1179a.remove();
    }
}

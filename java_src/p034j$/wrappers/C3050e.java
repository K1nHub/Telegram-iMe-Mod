package p034j$.wrappers;

import java.util.PrimitiveIterator;
import p034j$.util.InterfaceC2686q;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.wrappers.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3050e implements InterfaceC2686q {

    /* renamed from: a */
    final /* synthetic */ PrimitiveIterator.OfLong f1174a;

    private /* synthetic */ C3050e(PrimitiveIterator.OfLong ofLong) {
        this.f1174a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2686q m138a(PrimitiveIterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3052f ? ((C3052f) ofLong).f1176a : new C3050e(ofLong);
    }

    @Override // p034j$.util.InterfaceC2686q
    /* renamed from: d */
    public /* synthetic */ void mo137d(InterfaceC2666q interfaceC2666q) {
        this.f1174a.forEachRemaining(C3053f0.m133a(interfaceC2666q));
    }

    @Override // p034j$.util.InterfaceC2686q, p034j$.util.Iterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1174a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2683o
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1174a.forEachRemaining((PrimitiveIterator.OfLong) obj);
    }

    @Override // java.util.Iterator
    public /* synthetic */ boolean hasNext() {
        return this.f1174a.hasNext();
    }

    @Override // p034j$.util.InterfaceC2686q, java.util.Iterator
    public /* synthetic */ Long next() {
        return this.f1174a.next();
    }

    @Override // java.util.Iterator
    public /* synthetic */ Object next() {
        return this.f1174a.next();
    }

    @Override // p034j$.util.InterfaceC2686q
    public /* synthetic */ long nextLong() {
        return this.f1174a.nextLong();
    }

    @Override // java.util.Iterator
    public /* synthetic */ void remove() {
        this.f1174a.remove();
    }
}

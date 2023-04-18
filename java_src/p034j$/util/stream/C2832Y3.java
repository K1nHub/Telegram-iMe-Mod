package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2832Y3 extends AbstractC2837Z3 implements InterfaceC2666q {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2832Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2832Y3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3, java.lang.Iterable, p034j$.lang.InterfaceC2562e
    /* renamed from: B */
    public InterfaceC2688s.InterfaceC2691c spliterator() {
        return new C2827X3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        m459A();
        int i = this.f929b;
        this.f929b = i + 1;
        ((long[]) this.f865e)[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: c */
    public Object mo458c(int i) {
        return new long[i];
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.lang.InterfaceC2562e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2666q) {
            mo271g((InterfaceC2666q) consumer);
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2612I.m615h(spliterator());
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: t */
    protected void mo457t(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2666q interfaceC2666q = (InterfaceC2666q) obj2;
        while (i < i2) {
            interfaceC2666q.accept(jArr[i]);
            i++;
        }
    }

    public String toString() {
        long[] jArr = (long[]) mo272e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f930c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f930c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: u */
    protected int mo456u(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: z */
    protected Object[] mo451z(int i) {
        return new long[i];
    }
}

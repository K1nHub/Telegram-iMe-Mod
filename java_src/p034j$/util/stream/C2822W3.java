package p034j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2660k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2822W3 extends AbstractC2837Z3 implements InterfaceC2661l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2822W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2822W3(int i) {
        super(i);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3, java.lang.Iterable, p034j$.lang.InterfaceC2562e
    /* renamed from: B */
    public InterfaceC2688s.InterfaceC2690b spliterator() {
        return new C2817V3(this, 0, this.f930c, 0, this.f929b);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    public void accept(int i) {
        m459A();
        int i2 = this.f929b;
        this.f929b = i2 + 1;
        ((int[]) this.f865e)[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: c */
    public Object mo458c(int i) {
        return new int[i];
    }

    @Override // p034j$.lang.InterfaceC2562e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2661l) {
            mo271g((InterfaceC2661l) consumer);
        } else if (AbstractC2793Q4.f825a) {
            AbstractC2793Q4.m477a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2612I.m616g(spliterator());
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: t */
    protected void mo457t(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2661l interfaceC2661l = (InterfaceC2661l) obj2;
        while (i < i2) {
            interfaceC2661l.accept(iArr[i]);
            i++;
        }
    }

    public String toString() {
        int[] iArr = (int[]) mo272e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f930c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f930c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: u */
    protected int mo456u(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3
    /* renamed from: z */
    protected Object[] mo451z(int i) {
        return new int[i];
    }
}

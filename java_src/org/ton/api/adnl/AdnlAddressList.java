package org.ton.api.adnl;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.json.JsonClassDiscriminator;
import org.ton.p045tl.TlConstructor;
import org.ton.p045tl.TlReader;
import org.ton.p045tl.TlWriter;
import p033j$.lang.Iterable$CC;
import p033j$.util.Collection;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.Predicate;
import p033j$.util.stream.AbstractC3083o1;
import p033j$.util.stream.Stream;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Predicate$VWRP;
/* compiled from: AdnlAddressList.kt */
@JsonClassDiscriminator(discriminator = "@type")
@Serializable
/* loaded from: classes6.dex */
public final class AdnlAddressList implements Collection<AdnlAddress>, KMappedMarker, p033j$.util.Collection {
    private static final KSerializer<Object>[] $childSerializers;
    public static final Companion Companion = new Companion(null);
    private final Collection<AdnlAddress> addrs;
    private final int expireAt;
    private final int priority;
    private final int reinitDate;
    private final int version;

    public AdnlAddressList() {
        this((Collection) null, 0, 0, 0, 0, 31, (DefaultConstructorMarker) null);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean addAll(Collection<? extends AdnlAddress> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(AdnlAddress element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.addrs.contains(element);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.addrs.containsAll(elements);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdnlAddressList) {
            AdnlAddressList adnlAddressList = (AdnlAddressList) obj;
            return Intrinsics.areEqual(this.addrs, adnlAddressList.addrs) && this.version == adnlAddressList.version && this.reinitDate == adnlAddressList.reinitDate && this.priority == adnlAddressList.priority && this.expireAt == adnlAddressList.expireAt;
        }
        return false;
    }

    @Override // p033j$.util.Collection, p033j$.lang.InterfaceC2671e
    public /* synthetic */ void forEach(Consumer consumer) {
        Iterable$CC.$default$forEach(this, consumer);
    }

    public int getSize() {
        return this.addrs.size();
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public int hashCode() {
        return (((((((this.addrs.hashCode() * 31) + this.version) * 31) + this.reinitDate) * 31) + this.priority) * 31) + this.expireAt;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean isEmpty() {
        return this.addrs.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable, p033j$.util.Collection
    public Iterator<AdnlAddress> iterator() {
        return this.addrs.iterator();
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public /* synthetic */ Stream parallelStream() {
        Stream m399y;
        m399y = AbstractC3083o1.m399y(Collection.EL.m695b(this), true);
        return m399y;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean removeAll(java.util.Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p033j$.util.Collection
    public boolean removeIf(Predicate<? super AdnlAddress> predicate) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean removeIf(java.util.function.Predicate<? super AdnlAddress> predicate) {
        return removeIf(C$r8$wrapper$java$util$function$Predicate$VWRP.convert(predicate));
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public boolean retainAll(java.util.Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.lang.Iterable, p033j$.util.Collection, p033j$.lang.InterfaceC2671e
    public /* synthetic */ Spliterator spliterator() {
        return Collection.CC.$default$spliterator(this);
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public /* synthetic */ Stream stream() {
        Stream m399y;
        m399y = AbstractC3083o1.m399y(Collection.EL.m695b(this), false);
        return m399y;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // p033j$.util.Collection
    public /* synthetic */ Object[] toArray(IntFunction intFunction) {
        Object[] array;
        array = toArray((Object[]) intFunction.apply(0));
        return array;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public String toString() {
        return "AdnlAddressList(addrs=" + this.addrs + ", version=" + this.version + ", reinitDate=" + this.reinitDate + ", priority=" + this.priority + ", expireAt=" + this.expireAt + ')';
    }

    public /* synthetic */ AdnlAddressList(int i, java.util.Collection collection, int i2, int i3, int i4, int i5, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i & 0) != 0) {
            PluginExceptionsKt.throwMissingFieldException(i, 0, AdnlAddressList$$serializer.INSTANCE.getDescriptor());
        }
        this.addrs = (i & 1) == 0 ? CollectionsKt__CollectionsKt.emptyList() : collection;
        if ((i & 2) == 0) {
            this.version = 0;
        } else {
            this.version = i2;
        }
        if ((i & 4) == 0) {
            this.reinitDate = 0;
        } else {
            this.reinitDate = i3;
        }
        if ((i & 8) == 0) {
            this.priority = 0;
        } else {
            this.priority = i4;
        }
        if ((i & 16) == 0) {
            this.expireAt = 0;
        } else {
            this.expireAt = i5;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AdnlAddressList(java.util.Collection<? extends AdnlAddress> addrs, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(addrs, "addrs");
        this.addrs = addrs;
        this.version = i;
        this.reinitDate = i2;
        this.priority = i3;
        this.expireAt = i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void write$Self(org.ton.api.adnl.AdnlAddressList r5, kotlinx.serialization.encoding.CompositeEncoder r6, kotlinx.serialization.descriptors.SerialDescriptor r7) {
        /*
            kotlinx.serialization.KSerializer<java.lang.Object>[] r0 = org.ton.api.adnl.AdnlAddressList.$childSerializers
            r1 = 0
            boolean r2 = r6.shouldEncodeElementDefault(r7, r1)
            r3 = 1
            if (r2 == 0) goto Lc
        La:
            r2 = r3
            goto L1a
        Lc:
            java.util.Collection<org.ton.api.adnl.AdnlAddress> r2 = r5.addrs
            java.util.List r4 = kotlin.collections.CollectionsKt.emptyList()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r4)
            if (r2 != 0) goto L19
            goto La
        L19:
            r2 = r1
        L1a:
            if (r2 == 0) goto L23
            r0 = r0[r1]
            java.util.Collection<org.ton.api.adnl.AdnlAddress> r2 = r5.addrs
            r6.encodeSerializableElement(r7, r1, r0, r2)
        L23:
            boolean r0 = r6.shouldEncodeElementDefault(r7, r3)
            if (r0 == 0) goto L2b
        L29:
            r0 = r3
            goto L31
        L2b:
            int r0 = r5.version
            if (r0 == 0) goto L30
            goto L29
        L30:
            r0 = r1
        L31:
            if (r0 == 0) goto L38
            int r0 = r5.version
            r6.encodeIntElement(r7, r3, r0)
        L38:
            r0 = 2
            boolean r2 = r6.shouldEncodeElementDefault(r7, r0)
            if (r2 == 0) goto L41
        L3f:
            r2 = r3
            goto L47
        L41:
            int r2 = r5.reinitDate
            if (r2 == 0) goto L46
            goto L3f
        L46:
            r2 = r1
        L47:
            if (r2 == 0) goto L4e
            int r2 = r5.reinitDate
            r6.encodeIntElement(r7, r0, r2)
        L4e:
            r0 = 3
            boolean r2 = r6.shouldEncodeElementDefault(r7, r0)
            if (r2 == 0) goto L57
        L55:
            r2 = r3
            goto L5d
        L57:
            int r2 = r5.priority
            if (r2 == 0) goto L5c
            goto L55
        L5c:
            r2 = r1
        L5d:
            if (r2 == 0) goto L64
            int r2 = r5.priority
            r6.encodeIntElement(r7, r0, r2)
        L64:
            r0 = 4
            boolean r2 = r6.shouldEncodeElementDefault(r7, r0)
            if (r2 == 0) goto L6d
        L6b:
            r1 = r3
            goto L72
        L6d:
            int r2 = r5.expireAt
            if (r2 == 0) goto L72
            goto L6b
        L72:
            if (r1 == 0) goto L79
            int r5 = r5.expireAt
            r6.encodeIntElement(r7, r0, r5)
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.api.adnl.AdnlAddressList.write$Self(org.ton.api.adnl.AdnlAddressList, kotlinx.serialization.encoding.CompositeEncoder, kotlinx.serialization.descriptors.SerialDescriptor):void");
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof AdnlAddress) {
            return contains((AdnlAddress) obj);
        }
        return false;
    }

    @Override // java.util.Collection, p033j$.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public /* synthetic */ AdnlAddressList(java.util.Collection collection, int i, int i2, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? CollectionsKt__CollectionsKt.emptyList() : collection, (i5 & 2) != 0 ? 0 : i, (i5 & 4) != 0 ? 0 : i2, (i5 & 8) != 0 ? 0 : i3, (i5 & 16) == 0 ? i4 : 0);
    }

    public final java.util.Collection<AdnlAddress> getAddrs() {
        return this.addrs;
    }

    public final int getVersion() {
        return this.version;
    }

    public final int getReinitDate() {
        return this.reinitDate;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final int getExpireAt() {
        return this.expireAt;
    }

    /* compiled from: AdnlAddressList.kt */
    /* loaded from: classes6.dex */
    public static final class Companion extends TlConstructor<AdnlAddressList> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super("adnl.addressList addrs:(vector adnl.Address) version:int reinit_date:int priority:int expire_at:int = adnl.AddressList", null, 2, null);
        }

        public final KSerializer<AdnlAddressList> serializer() {
            return AdnlAddressList$$serializer.INSTANCE;
        }

        @Override // org.ton.p045tl.TlEncoder
        public void encode(TlWriter writer, AdnlAddressList value) {
            Intrinsics.checkNotNullParameter(writer, "writer");
            Intrinsics.checkNotNullParameter(value, "value");
            java.util.Collection<AdnlAddress> addrs = value.getAddrs();
            writer.writeInt(addrs.size());
            for (AdnlAddress adnlAddress : addrs) {
                AdnlAddress.Companion.encode(writer, (TlWriter) adnlAddress);
            }
            writer.writeInt(value.getVersion());
            writer.writeInt(value.getReinitDate());
            writer.writeInt(value.getPriority());
            writer.writeInt(value.getExpireAt());
        }

        @Override // org.ton.p045tl.TlDecoder
        public AdnlAddressList decode(TlReader reader) {
            Intrinsics.checkNotNullParameter(reader, "reader");
            return new AdnlAddressList(reader.readVector(new Function1<TlReader, AdnlAddress>() { // from class: org.ton.api.adnl.AdnlAddressList$Companion$decode$addrs$1
                @Override // kotlin.jvm.functions.Function1
                public final AdnlAddress invoke(TlReader readVector) {
                    Intrinsics.checkNotNullParameter(readVector, "$this$readVector");
                    return AdnlAddress.Companion.decode(readVector);
                }
            }), reader.readInt(), reader.readInt(), reader.readInt(), reader.readInt());
        }
    }

    static {
        KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AdnlAddress.class);
        KClass[] kClassArr = {Reflection.getOrCreateKotlinClass(AdnlAddressTunnel.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp6.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp.class), Reflection.getOrCreateKotlinClass(AdnlAddressUdp6.class)};
        AdnlAddressUdp$$serializer adnlAddressUdp$$serializer = AdnlAddressUdp$$serializer.INSTANCE;
        AdnlAddressUdp6$$serializer adnlAddressUdp6$$serializer = AdnlAddressUdp6$$serializer.INSTANCE;
        $childSerializers = new KSerializer[]{new ArrayListSerializer(new SealedClassSerializer("org.ton.api.adnl.AdnlAddress", orCreateKotlinClass, kClassArr, new KSerializer[]{AdnlAddressTunnel$$serializer.INSTANCE, adnlAddressUdp$$serializer, adnlAddressUdp6$$serializer, adnlAddressUdp$$serializer, adnlAddressUdp6$$serializer}, new Annotation[]{new C7498x7048dd0e("@type")})), null, null, null, null};
    }
}

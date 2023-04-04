package com.google.android.gms.internal.firebase_ml;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes.dex */
public class zzho extends AbstractMap<String, Object> implements Cloneable {
    final zzhh zztq;
    Map<String, Object> zzzi;

    /* loaded from: classes.dex */
    public enum zzc {
        IGNORE_CASE
    }

    public zzho() {
        this(EnumSet.noneOf(zzc.class));
    }

    /* loaded from: classes.dex */
    final class zza extends AbstractSet<Map.Entry<String, Object>> {
        private final zzhn zzzl;

        zza() {
            this.zzzl = (zzhn) new zzhi(zzho.this, zzho.this.zztq.zzgu()).entrySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<String, Object>> iterator() {
            return new zzb(zzho.this, this.zzzl);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return zzho.this.zzzi.size() + this.zzzl.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            zzho.this.zzzi.clear();
            this.zzzl.clear();
        }
    }

    public zzho(EnumSet<zzc> enumSet) {
        this.zzzi = new zzhb();
        this.zztq = zzhh.zza(getClass(), enumSet.contains(zzc.IGNORE_CASE));
    }

    /* loaded from: classes.dex */
    final class zzb implements Iterator<Map.Entry<String, Object>>, p035j$.util.Iterator {
        private boolean zzzn;
        private final Iterator<Map.Entry<String, Object>> zzzo;
        private final Iterator<Map.Entry<String, Object>> zzzp;

        zzb(zzho zzhoVar, zzhn zzhnVar) {
            this.zzzo = (zzhk) zzhnVar.iterator();
            this.zzzp = zzhoVar.zzzi.entrySet().iterator();
        }

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public final boolean hasNext() {
            return this.zzzo.hasNext() || this.zzzp.hasNext();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public final void remove() {
            if (this.zzzn) {
                this.zzzp.remove();
            }
            this.zzzo.remove();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public final /* synthetic */ Object next() {
            if (!this.zzzn) {
                if (this.zzzo.hasNext()) {
                    return this.zzzo.next();
                }
                this.zzzn = true;
            }
            return this.zzzp.next();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            zzhp zzal = this.zztq.zzal(str);
            if (zzal != null) {
                return zzal.zzh(this);
            }
            if (this.zztq.zzgu()) {
                str = str.toLowerCase(Locale.US);
            }
            return this.zzzi.get(str);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: zzf */
    public final Object put(String str, Object obj) {
        zzhp zzal = this.zztq.zzal(str);
        if (zzal != null) {
            Object zzh = zzal.zzh(this);
            zzal.zzb(this, obj);
            return zzh;
        }
        if (this.zztq.zzgu()) {
            str = str.toLowerCase(Locale.US);
        }
        return this.zzzi.put(str, obj);
    }

    public zzho zzb(String str, Object obj) {
        zzhp zzal = this.zztq.zzal(str);
        if (zzal != null) {
            zzal.zzb(this, obj);
        } else {
            if (this.zztq.zzgu()) {
                str = str.toLowerCase(Locale.US);
            }
            this.zzzi.put(str, obj);
        }
        return this;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry<? extends String, ?> entry : map.entrySet()) {
            zzb(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (this.zztq.zzal(str) != null) {
                throw new UnsupportedOperationException();
            }
            if (this.zztq.zzgu()) {
                str = str.toLowerCase(Locale.US);
            }
            return this.zzzi.remove(str);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return new zza();
    }

    @Override // java.util.AbstractMap
    /* renamed from: zzea */
    public zzho clone() {
        try {
            zzho zzhoVar = (zzho) super.clone();
            zzhj.zza(this, zzhoVar);
            zzhoVar.zzzi = (Map) zzhj.clone(this.zzzi);
            return zzhoVar;
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e);
        }
    }

    public final zzhh zzgx() {
        return this.zztq;
    }
}

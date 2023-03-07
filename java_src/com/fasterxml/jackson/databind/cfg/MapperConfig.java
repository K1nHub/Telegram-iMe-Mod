package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude$Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class MapperConfig<T extends MapperConfig<T>> implements ClassIntrospector.MixInResolver, Serializable {
    protected final BaseSettings _base;
    protected final int _mapperFeatures;

    static {
        JsonInclude$Value.empty();
        JsonFormat.Value.empty();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(BaseSettings baseSettings, int i) {
        this._base = baseSettings;
        this._mapperFeatures = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig, int i) {
        this._base = mapperConfig._base;
        this._mapperFeatures = i;
    }

    public static <F extends Enum<F> & ConfigFeature> int collectFeatureDefaults(Class<F> cls) {
        int i = 0;
        for (Enum r3 : (Enum[]) cls.getEnumConstants()) {
            ConfigFeature configFeature = (ConfigFeature) r3;
            if (configFeature.enabledByDefault()) {
                i |= configFeature.getMask();
            }
        }
        return i;
    }

    public final boolean isEnabled(MapperFeature mapperFeature) {
        return (mapperFeature.getMask() & this._mapperFeatures) != 0;
    }

    public final boolean isAnnotationProcessingEnabled() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS);
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._base.getAnnotationIntrospector();
    }

    public final TypeFactory getTypeFactory() {
        return this._base.getTypeFactory();
    }
}

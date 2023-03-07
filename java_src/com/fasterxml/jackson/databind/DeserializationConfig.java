package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
/* loaded from: classes.dex */
public final class DeserializationConfig extends MapperConfigBase<DeserializationFeature, DeserializationConfig> {
    protected final int _deserFeatures;
    protected final int _formatReadFeatures;
    protected final int _formatReadFeaturesToChange;
    protected final JsonNodeFactory _nodeFactory;
    protected final int _parserFeatures;
    protected final int _parserFeaturesToChange;

    public DeserializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup, configOverrides);
        this._deserFeatures = MapperConfig.collectFeatureDefaults(DeserializationFeature.class);
        this._nodeFactory = JsonNodeFactory.instance;
        this._parserFeatures = 0;
        this._parserFeaturesToChange = 0;
        this._formatReadFeatures = 0;
        this._formatReadFeaturesToChange = 0;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        super(deserializationConfig, i);
        this._deserFeatures = i2;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = i3;
        this._parserFeaturesToChange = i4;
        this._formatReadFeatures = i5;
        this._formatReadFeaturesToChange = i6;
    }

    public DeserializationConfig with(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i |= mapperFeature.getMask();
        }
        return i == this._mapperFeatures ? this : new DeserializationConfig(this, i, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig without(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i &= ~mapperFeature.getMask();
        }
        return i == this._mapperFeatures ? this : new DeserializationConfig(this, i, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature) {
        int mask = this._deserFeatures | deserializationFeature.getMask();
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature) {
        int i = this._deserFeatures & (~deserializationFeature.getMask());
        return i == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, i, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public AnnotationIntrospector getAnnotationIntrospector() {
        if (isEnabled(MapperFeature.USE_ANNOTATIONS)) {
            return super.getAnnotationIntrospector();
        }
        return NopAnnotationIntrospector.instance;
    }
}

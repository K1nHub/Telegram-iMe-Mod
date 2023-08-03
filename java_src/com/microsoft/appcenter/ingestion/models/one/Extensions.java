package com.microsoft.appcenter.ingestion.models.one;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.microsoft.appcenter.ingestion.models.Model;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
/* loaded from: classes4.dex */
public class Extensions implements Model {
    private AppExtension app;
    private DeviceExtension device;
    private LocExtension loc;
    private MetadataExtension metadata;

    /* renamed from: net  reason: collision with root package name */
    private NetExtension f1990net;

    /* renamed from: os */
    private OsExtension f468os;
    private ProtocolExtension protocol;
    private SdkExtension sdk;
    private UserExtension user;

    public MetadataExtension getMetadata() {
        return this.metadata;
    }

    public void setMetadata(MetadataExtension metadata) {
        this.metadata = metadata;
    }

    public ProtocolExtension getProtocol() {
        return this.protocol;
    }

    public void setProtocol(ProtocolExtension protocol) {
        this.protocol = protocol;
    }

    public UserExtension getUser() {
        return this.user;
    }

    public void setUser(UserExtension user) {
        this.user = user;
    }

    public DeviceExtension getDevice() {
        return this.device;
    }

    public void setDevice(DeviceExtension device) {
        this.device = device;
    }

    public OsExtension getOs() {
        return this.f468os;
    }

    public void setOs(OsExtension os) {
        this.f468os = os;
    }

    public AppExtension getApp() {
        return this.app;
    }

    public void setApp(AppExtension app) {
        this.app = app;
    }

    public NetExtension getNet() {
        return this.f1990net;
    }

    public void setNet(NetExtension net2) {
        this.f1990net = net2;
    }

    public SdkExtension getSdk() {
        return this.sdk;
    }

    public void setSdk(SdkExtension sdk) {
        this.sdk = sdk;
    }

    public LocExtension getLoc() {
        return this.loc;
    }

    public void setLoc(LocExtension loc) {
        this.loc = loc;
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void read(JSONObject object) throws JSONException {
        if (object.has(TtmlNode.TAG_METADATA)) {
            MetadataExtension metadataExtension = new MetadataExtension();
            metadataExtension.read(object.getJSONObject(TtmlNode.TAG_METADATA));
            setMetadata(metadataExtension);
        }
        if (object.has("protocol")) {
            ProtocolExtension protocolExtension = new ProtocolExtension();
            protocolExtension.read(object.getJSONObject("protocol"));
            setProtocol(protocolExtension);
        }
        if (object.has("user")) {
            UserExtension userExtension = new UserExtension();
            userExtension.read(object.getJSONObject("user"));
            setUser(userExtension);
        }
        if (object.has("device")) {
            DeviceExtension deviceExtension = new DeviceExtension();
            deviceExtension.read(object.getJSONObject("device"));
            setDevice(deviceExtension);
        }
        if (object.has("os")) {
            OsExtension osExtension = new OsExtension();
            osExtension.read(object.getJSONObject("os"));
            setOs(osExtension);
        }
        if (object.has("app")) {
            AppExtension appExtension = new AppExtension();
            appExtension.read(object.getJSONObject("app"));
            setApp(appExtension);
        }
        if (object.has("net")) {
            NetExtension netExtension = new NetExtension();
            netExtension.read(object.getJSONObject("net"));
            setNet(netExtension);
        }
        if (object.has("sdk")) {
            SdkExtension sdkExtension = new SdkExtension();
            sdkExtension.read(object.getJSONObject("sdk"));
            setSdk(sdkExtension);
        }
        if (object.has("loc")) {
            LocExtension locExtension = new LocExtension();
            locExtension.read(object.getJSONObject("loc"));
            setLoc(locExtension);
        }
    }

    @Override // com.microsoft.appcenter.ingestion.models.Model
    public void write(JSONStringer writer) throws JSONException {
        if (getMetadata() != null) {
            writer.key(TtmlNode.TAG_METADATA).object();
            getMetadata().write(writer);
            writer.endObject();
        }
        if (getProtocol() != null) {
            writer.key("protocol").object();
            getProtocol().write(writer);
            writer.endObject();
        }
        if (getUser() != null) {
            writer.key("user").object();
            getUser().write(writer);
            writer.endObject();
        }
        if (getDevice() != null) {
            writer.key("device").object();
            getDevice().write(writer);
            writer.endObject();
        }
        if (getOs() != null) {
            writer.key("os").object();
            getOs().write(writer);
            writer.endObject();
        }
        if (getApp() != null) {
            writer.key("app").object();
            getApp().write(writer);
            writer.endObject();
        }
        if (getNet() != null) {
            writer.key("net").object();
            getNet().write(writer);
            writer.endObject();
        }
        if (getSdk() != null) {
            writer.key("sdk").object();
            getSdk().write(writer);
            writer.endObject();
        }
        if (getLoc() != null) {
            writer.key("loc").object();
            getLoc().write(writer);
            writer.endObject();
        }
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || Extensions.class != o.getClass()) {
            return false;
        }
        Extensions extensions = (Extensions) o;
        MetadataExtension metadataExtension = this.metadata;
        if (metadataExtension == null ? extensions.metadata == null : metadataExtension.equals(extensions.metadata)) {
            ProtocolExtension protocolExtension = this.protocol;
            if (protocolExtension == null ? extensions.protocol == null : protocolExtension.equals(extensions.protocol)) {
                UserExtension userExtension = this.user;
                if (userExtension == null ? extensions.user == null : userExtension.equals(extensions.user)) {
                    DeviceExtension deviceExtension = this.device;
                    if (deviceExtension == null ? extensions.device == null : deviceExtension.equals(extensions.device)) {
                        OsExtension osExtension = this.f468os;
                        if (osExtension == null ? extensions.f468os == null : osExtension.equals(extensions.f468os)) {
                            AppExtension appExtension = this.app;
                            if (appExtension == null ? extensions.app == null : appExtension.equals(extensions.app)) {
                                NetExtension netExtension = this.f1990net;
                                if (netExtension == null ? extensions.f1990net == null : netExtension.equals(extensions.f1990net)) {
                                    SdkExtension sdkExtension = this.sdk;
                                    if (sdkExtension == null ? extensions.sdk == null : sdkExtension.equals(extensions.sdk)) {
                                        LocExtension locExtension = this.loc;
                                        LocExtension locExtension2 = extensions.loc;
                                        return locExtension != null ? locExtension.equals(locExtension2) : locExtension2 == null;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        MetadataExtension metadataExtension = this.metadata;
        int hashCode = (metadataExtension != null ? metadataExtension.hashCode() : 0) * 31;
        ProtocolExtension protocolExtension = this.protocol;
        int hashCode2 = (hashCode + (protocolExtension != null ? protocolExtension.hashCode() : 0)) * 31;
        UserExtension userExtension = this.user;
        int hashCode3 = (hashCode2 + (userExtension != null ? userExtension.hashCode() : 0)) * 31;
        DeviceExtension deviceExtension = this.device;
        int hashCode4 = (hashCode3 + (deviceExtension != null ? deviceExtension.hashCode() : 0)) * 31;
        OsExtension osExtension = this.f468os;
        int hashCode5 = (hashCode4 + (osExtension != null ? osExtension.hashCode() : 0)) * 31;
        AppExtension appExtension = this.app;
        int hashCode6 = (hashCode5 + (appExtension != null ? appExtension.hashCode() : 0)) * 31;
        NetExtension netExtension = this.f1990net;
        int hashCode7 = (hashCode6 + (netExtension != null ? netExtension.hashCode() : 0)) * 31;
        SdkExtension sdkExtension = this.sdk;
        int hashCode8 = (hashCode7 + (sdkExtension != null ? sdkExtension.hashCode() : 0)) * 31;
        LocExtension locExtension = this.loc;
        return hashCode8 + (locExtension != null ? locExtension.hashCode() : 0);
    }
}

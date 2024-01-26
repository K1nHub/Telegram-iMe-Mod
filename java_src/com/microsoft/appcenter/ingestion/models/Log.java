package com.microsoft.appcenter.ingestion.models;

import java.util.Date;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes4.dex */
public interface Log extends Model {
    void addTransmissionTarget(String transmissionTargetToken);

    Device getDevice();

    UUID getSid();

    Date getTimestamp();

    Set<String> getTransmissionTargetTokens();

    String getType();

    void setDevice(Device device);

    void setDistributionGroupId(String distributionGroupId);

    void setTimestamp(Date timestamp);
}
